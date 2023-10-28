//
//  AddHistoricalResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/25/23.
//

import SwiftUI
import SwiftData

struct AddHistoricalResultView: View {
    @Environment(\.modelContext) private var context
    @State private var sessionDate: String = "2023/01/01 19:00"
    @State private var defaultGameLevel: String = "0.5/0.5"
    @State var showingSelector: Bool =  false
    @State private var selectedPlayers: Set<String> = []
    @State private var playerProfits: [Float] = Array(repeating: 0, count: 12)
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Text("Add Historical Result")
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
                            HStack {
                                Text("\(player) :")
                                    .frame(width: 150, alignment: .leading)
                                Spacer()
                                TextField("", value: $playerProfits[index], format: .number)
                                    .keyboardType(.numbersAndPunctuation)
                                    .textFieldStyle(.roundedBorder)
                                    .frame(width: 150)
                                Spacer()
                            }
                        }
                    }
                    HStack {
                        Text("Session Date: ")
                            .frame(width: 150, alignment: .leading)
                        Spacer()
                        TextField("", text: $sessionDate)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                        Spacer()
                    }
                    HStack {
                        Text("Game Level: ")
                            .frame(width: 150, alignment: .leading)
                        Spacer()
                        TextField("", text: $defaultGameLevel)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                        Spacer()
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
            let result = Result()
            result.name = "\(sessionDate) \(defaultGameLevel) MAX\(selectedPlayers.count)"
            for player in Array(selectedPlayers) {
                if let index = Array(selectedPlayers).firstIndex(of: player) {
                    if playerProfits[index] >= 0 {
                        result.wins.append(Result.Player(name: player, buyinDollarAmount: 50.00, profitDollarAmount: playerProfits[index]))
                    } else {
                        result.loses.append(Result.Player(name: player, buyinDollarAmount: 50.00, profitDollarAmount: playerProfits[index]))
                    }
                }
            }
            context.insert(result)
            dismiss()
        }
        .font(.title2)
        .buttonStyle(BorderedProminentButtonStyle())
    }
}

#Preview {
    AddHistoricalResultView()
}
