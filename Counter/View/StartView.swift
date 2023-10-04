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
    @State private var players: [String] = ["","","","","","",""]
    @State private var defaultBuyIn: Int = 200
    @State private var defaultValuePerChip: Float = 0.1
    @Query private var settings: [Setting]

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Session Date: ")
                    Spacer()
                    TextField(getSessionName(), text: $sessionName)
                }
                .padding(10)
                HStack {
                    Text("Player 1: ")
                    Spacer()
                    TextField("", text: $player1)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Player 2: ")
                    Spacer()
                    TextField("", text: $player2)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Player 3: ")
                    Spacer()
                    TextField("", text: $player3)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Player 4: ")
                    Spacer()
                    TextField("", text: $player4)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Player 5: ")
                    Spacer()
                    TextField("", text: $player5)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Player 6: ")
                    Spacer()
                    TextField("", text: $player6)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Player 7: ")
                    Spacer()
                    TextField("", text: $player7)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Buy In Chips Per Player: ")
                    Spacer()
                    TextField("", value: $defaultBuyIn, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                HStack {
                    Text("Dollar Value Per Chip: ")
                    Spacer()
                    TextField("", value: $defaultValuePerChip, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                Spacer()
            }
            Spacer()
                
            NavigationLink("OK") {
                CounterView().onAppear {
                    addPlayers()
                    if settings.isEmpty {
                        context.insert(Setting(increment: defaultBuyIn, valuePerChip: defaultValuePerChip))
                    } else {
                        settings.first?.increment = defaultBuyIn
                        settings.first?.valuePerChip = defaultValuePerChip
                        try? context.save()
                    }
                    
                }
            }
        }
    }
    func addPlayers() {
        if !player1.isEmpty {
            context.insert(Player(name: player1))
        }
        if !player2.isEmpty {
            context.insert(Player(name: player2))
        }
        if !player3.isEmpty {
            context.insert(Player(name: player3))
        }
        if !player4.isEmpty {
            context.insert(Player(name: player4))
        }
        if !player5.isEmpty {
            context.insert(Player(name: player5))
        }
        if !player6.isEmpty {
            context.insert(Player(name: player6))
        }
        if !player7.isEmpty {
            context.insert(Player(name: player7))
        }
    }
    func getSessionName() -> String {
        let dateFormatter = DateFormatter()
        let date = Date.now
        dateFormatter.dateFormat = "YYYY/MM/dd"
        return dateFormatter.string(from: date)
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

#Preview {
    StartView()
}
