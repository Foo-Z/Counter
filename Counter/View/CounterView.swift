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
                Button("Add New Player") {
                    showingAddPlayer = true
                }.sheet(isPresented: $showingAddPlayer, content: {
                    AddPlayerView()
                })
            }
            VStack {
                List {
                    ForEach(players) { player in
                        PlayerView(currentPlayer: player)
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            removePlayer(players[index])
                        }
                    })
                }
            }
            //.navigationBarBackButtonHidden()
            VStack(spacing: 10) {
                Text("Average chips: \(getAverageChips())")
                Text("Total chips are: \(getTotalChips())")
                Text("Total buy in value is: $ \(getTotalBuyIn())")
            }
            NavigationLink("Checkout") {
                CheckoutView()
            }
        }
    }
    
    func removePlayer(_ player: Player) {
        context.delete(player)
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
