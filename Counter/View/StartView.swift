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
    @State private var sessionName: String = ""
    @State private var next: Bool = false
    @State private var player1: String = ""
    @State private var player2: String = ""
    @State private var player3: String = ""
    @State private var player4: String = ""
    @State private var player5: String = ""
    @State private var player6: String = ""
    @State private var player7: String = ""
    @State private var player8: String = ""
    @State private var player9: String = ""
    @State private var player10: String = ""
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
                    }
                    .sheet(isPresented: $showingSelector, content: {
                        SelectPlayerView(selectedPlayers: $selectedPlayers)
                    })
                    .buttonStyle(BorderedProminentButtonStyle())
                    .onAppear() {
//                        var i = 1
//                        for player in selectedPlayers {
//                            if i == 1 {
//                                player1 = player
//                            } else if i == 2 {
//                                player2 = player
//                            } else if i == 3 {
//                                player3 = player
//                            }
//                            i += 1
//                        }
                        player1 = selectedPlayers.first ?? ""
//                        player2 = $selectedPlayers.last ?? ""
                        print(selectedPlayers)
                    }
                    HStack {
                        Text("Player 1: ")
                        Spacer()
                        TextField("Feiou", text: $player1)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 2: ")
                        Spacer()
                        TextField("", text: $player2)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                        
                    }
                    HStack {
                        Text("Player 3: ")
                        Spacer()
                        TextField("", text: $player3)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 4: ")
                        Spacer()
                        TextField("", text: $player4)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 5: ")
                        Spacer()
                        TextField("", text: $player5)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 6: ")
                        Spacer()
                        TextField("", text: $player6)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 7: ")
                        Spacer()
                        TextField("", text: $player7)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 8: ")
                        Spacer()
                        TextField("", text: $player8)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 9: ")
                        Spacer()
                        TextField("", text: $player9)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Player 10: ")
                        Spacer()
                        TextField("", text: $player10)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
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
        if !player1.isEmpty {
            context.insert(Player(name: player1, buyIn: defaultBuyIn))
            player1 = ""
        }
        if !player2.isEmpty {
            context.insert(Player(name: player2, buyIn: defaultBuyIn))
            player2 = ""
        }
        if !player3.isEmpty {
            context.insert(Player(name: player3, buyIn: defaultBuyIn))
            player3 = ""
        }
        if !player4.isEmpty {
            context.insert(Player(name: player4, buyIn: defaultBuyIn))
            player4 = ""
        }
        if !player5.isEmpty {
            context.insert(Player(name: player5, buyIn: defaultBuyIn))
            player5 = ""
        }
        if !player6.isEmpty {
            context.insert(Player(name: player6, buyIn: defaultBuyIn))
            player6 = ""
        }
        if !player7.isEmpty {
            context.insert(Player(name: player7, buyIn: defaultBuyIn))
            player7 = ""
        }
        if !player8.isEmpty {
            context.insert(Player(name: player8, buyIn: defaultBuyIn))
            player8 = ""
        }
        if !player9.isEmpty {
            context.insert(Player(name: player9, buyIn: defaultBuyIn))
            player9 = ""
        }
        if !player10.isEmpty {
            context.insert(Player(name: player10, buyIn: defaultBuyIn))
            player10 = ""
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
    @State private var playerName: String
    var body: some View {
        HStack {
            Text("Player \(index + 1): ")
            Spacer()
            TextField("", text: $playerName)
                .textFieldStyle(.roundedBorder)
        }
        .padding(10)
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
