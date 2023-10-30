//
//  StartView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData

struct StartView: View {
    @Environment(\.modelContext) private var context
    @State private var defaultBuyIn: Int = 500
    @State private var defaultValuePerChip: Float = 0.1
    @State private var defaultGameLevel: String = "0.5/0.5"
    @Query private var settings: [Setting]
    @Query private var players: [Player]
    @Environment(\.dismiss) private var dismiss
    @State private var showingAlert = false
    @State var showingSelector: Bool =  false
    @State private var selectedPlayers: Set<String> = []
    
    var body: some View {
        Text("Session Date: \(getSessionName())")
            .font(.title2)
            .padding(10)
        VStack(alignment: .leading, spacing: 5) {
            List {
                VStack {
                    Button("Select Players") {
                        showingSelector = true
                    }.padding(10)
                        .sheet(isPresented: $showingSelector, content: {
                            SelectPlayerView(selectedPlayers: $selectedPlayers)
                        })
                        .buttonStyle(BorderedProminentButtonStyle())
                    ForEach(Array(selectedPlayers), id: \.self) { player in
                        if let index = Array(selectedPlayers).firstIndex(of: player) {
                            RowView(index: index, playerName: player)
                        }
                    }
                    HStack {
                        Text("Buy In chips: ")
                        Spacer()
                        TextField("", value: $defaultBuyIn, format: .number)
                            .keyboardType(.numberPad)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Chip value: ")
                        Spacer()
                        TextField("", value: $defaultValuePerChip, format: .number)
                            .keyboardType(.numberPad)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Game Level: ")
                        Spacer()
                        TextField("", text: $defaultGameLevel)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    Spacer()
                }
            }
        }
        .onTapGesture {
            self.hideKeyboard()
        }
        Spacer()
        
        Button("OK") {
            showingAlert = true
        }
        .font(.title2)
        .buttonStyle(BorderedProminentButtonStyle())
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("This will remove all existing players."),
                message: Text("Are you sure?"),
                primaryButton: .destructive(Text("OK")) {
                    clearLastSession()
                    updateSettings()
                    addPlayers(defaultBuyIn)
                    dismiss()
                },
                secondaryButton: .cancel()
            )
        }
    }
    
    func addPlayers(_: Int) {
        for (index, player) in selectedPlayers.enumerated() {
            context.insert(Player(name: player, buyIn: defaultBuyIn, seatNumber: index + 1))
        }
    }
    
    func getSessionName() -> String {
        let dateFormatter = DateFormatter()
        let date = Date.now
        dateFormatter.dateFormat = "YYYY/MM/dd HH:mm"
        return dateFormatter.string(from: date)
    }
    
    func clearLastSession() {
        for player in players {
            context.delete(player)
        }
    }
    
    func updateSettings() {
        let date = Date.now
        if settings.isEmpty {
            context.insert(Setting(increment: defaultBuyIn, valuePerChip: defaultValuePerChip, gameLevel: defaultGameLevel, sessionDate: date))
        } else {
            settings.first?.increment = defaultBuyIn
            settings.first?.valuePerChip = defaultValuePerChip
            settings.first?.gameLevel = defaultGameLevel
            settings.first?.sessionDate = date
            try? context.save()
        }
        defaultBuyIn = settings.first?.increment ?? 500
    }
}

struct RowView: View {
    var index: Int
    @State var playerName: String
    var body: some View {
        HStack {
            Text("Player \(index + 1): ")
            Spacer()
            TextField("", text: $playerName)
                .textFieldStyle(.roundedBorder)
                .frame(width: 150)
                .disabled(true)
        }
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    StartView()
}
