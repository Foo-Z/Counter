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
    @State var showingShuffleSeat: Bool = false
    @State var seat: [Int] = []
    
    var body: some View {
        NavigationStack {
            HStack {
                Button("Settings") {
                    showingSettings = true
                }
                .sheet(isPresented: $showingSettings, content: {
                    SettingView()
                })
                .onAppear() {
                    if settings.isEmpty {
                        context.insert(Setting(increment: 500, valuePerChip: 0.1, gameLevel: "0.5/0.5"))
                    }
                }
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
                        if let index = Array(players).firstIndex(of: player) {
                            let seatNumber = seat.count <= index ? index + 1 : seat[index]
                            PlayerView(currentPlayer: player, seatNumber: seatNumber)
                                .swipeActions(edge: .leading) {
                                    Button("Undo") {
                                        player.buyIn -= getIncrement()
                                        try? context.save()
                                    }
                                    .tint(.orange)
                                }
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
                Button(action: {
                    showingShuffleSeat = true
                    shuffleSeat()
                }) {
                    Image(systemName: "shuffle")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
                .padding(20)
                Spacer()
                VStack(spacing: 10) {
                    Text("Average chips: \(getAverageChips())")
                    Text("Total chips: \(getTotalChips())")
                    Text("Total buy in: $ \(getTotalBuyIn())")
                }
                .alert(isPresented: $showingShuffleSeat) {
                    Alert(
                        title: Text("Shuffle Seat"),
                        message: Text("Player seat have been shuffled."),
                        dismissButton: .default(Text("OK"))
                    )
                }
                Spacer()
                Button(action: {
                    showingAddPlayer = true
                }) {
                    Image(systemName: "plus")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
                .padding(20)
                .sheet(isPresented: $showingAddPlayer, content: {
                    AddPlayerView()
                })
            }
            NavigationLink("Checkout") {
                CheckoutView()
            }
            .padding(5)
            .buttonStyle(BorderedProminentButtonStyle())
            .font(.title3)
        }
        .navigationBarBackButtonHidden()
    }
    
    func shuffleSeat() {
        self.seat.removeAll()
        let count = players.count
        for index in 0..<count {
            self.seat.append(index + 1)
        }
        seat.shuffle()
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
