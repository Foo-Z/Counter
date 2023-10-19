//
//  CounterView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData

struct CounterView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @Query private var players: [Player]
    @Query private var settings: [Setting]
    @State var showingAddPlayer: Bool = false
    @State var showingSettings: Bool =  false
    @State var showingStartPage: Bool = false
    
    var body: some View {
        NavigationStack {
            HStack {
                Button("Settings") {
                    showingSettings = true
                }
                .sheet(isPresented: $showingSettings, content: {
                    SettingView()
                })
                Spacer()
                Button("Add New Session") {
                    showingStartPage = true
                }.sheet(isPresented: $showingStartPage, content: {
                    StartView()
                })
            }
            .padding(5)
            VStack {
                List {
                    ForEach(players) { player in
                        PlayerView(currentPlayer: player)
                            .swipeActions(edge: .leading) {
                                Button("Undo") {
                                    player.buyIn -= getIncrement()
                                    try? context.save()
                                }
                                .tint(.orange)
                            }
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            removePlayer(players[index])
                        }
                    })
                }
            }
            HStack {
                Spacer()
                VStack(spacing: 10) {
                    Text("Average chips: \(getAverageChips())")
                    Text("Total chips are: \(getTotalChips())")
                    Text("Total buy in value is: $ \(getTotalBuyIn())")
                }
                Button("+") {
                    showingAddPlayer = true
                }.sheet(isPresented: $showingAddPlayer, content: {
                    AddPlayerView()
                })
                .buttonStyle(BorderedProminentButtonStyle())
                .padding(30)
                .font(.title2)
                //Spacer()
                
            }
            NavigationLink("Checkout") {
                CheckoutView()
            }
            .padding(10)
            .buttonStyle(BorderedProminentButtonStyle())
            .font(.title2)
        }
        .navigationBarBackButtonHidden()
    }
    
    func removePlayer(_ player: Player) {
        context.delete(player)
    }
    
    func getIncrement() -> Int {
        settings.first?.increment ?? 500
    }
    
    func getTotalChips() -> Int {
        var totalChips: Int = 0
        for player in players {
            totalChips += player.buyIn
        }
        return totalChips
    }
    
    func getChipValue() -> Float {
        settings.first?.valuePerChip ?? 0.1
    }
    
    func getTotalBuyIn() -> String {
        String(format: "%.2f", getChipValue() * Float(getTotalChips()))
    }
    
    func getAverageChips() -> Int {
        if players.isEmpty {
            return 0
        }
        return getTotalChips() / players.count
    }
}

#Preview {
    CounterView()
}
