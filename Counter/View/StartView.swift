//
//  StartView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI

struct StartView: View {
    @ObservedObject var viewModel: CounterViewModel
    @State private var sessionName: String = ""
    @State private var next: Bool = false
    @State private var player1: String = ""
    @State private var player2: String = ""
    @State private var player3: String = ""
    @State private var player4: String = ""
    @State private var player5: String = ""
    @State private var player6: String = ""
    @State private var player7: String = ""
    @State private var defaultBuyIn: Int = 400
    @State private var defaultValuePerChip: Float = 0.01
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Session Date: ")
                    Spacer()
                    TextField(viewModel.getSessionName(), text: $sessionName)
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
                //addPlayers
//                if !player1.isEmpty {
//                    viewModel.addNewPlayer(name: player1)
//                }
                CounterView(viewModel: viewModel).onAppear {
                    addPlayers()
                }
            }
//            .onSubmit {
//                if !player1.isEmpty {
//                    viewModel.addNewPlayer(name: player1)
//                }
//            }
        }
    }
    func addPlayers() {
        if !player1.isEmpty {
            viewModel.addNewPlayer(name: player1)
        }
    }
}

#Preview {
    StartView(viewModel: CounterViewModel())
}
