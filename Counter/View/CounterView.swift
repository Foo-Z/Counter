//
//  CounterView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData
import FortuneWheel

struct CounterView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @Query(sort: \Player.seatNumber) private var players: [Player]
    @Query private var playerRecords: [PlayerRecord]
    @Query private var settings: [Setting]
    @State var showingAddPlayer: Bool = false
    @State var showingSettings: Bool =  false
    @State var showingStartPage: Bool = false
    @State var showingShuffleSeat: Bool = false
    @State var showingVampire: Bool = false
    @State private var vampires: Set<String> = []
    @State var halloweenBonus: Int = 0
    @State var showingPrizeWheel: Bool = false
    @State var boomPotMessage: String = ""
    
    var body: some View {
        NavigationStack {
            HStack {
                Button("  Settings") {
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
                Button("  🎃") {
                    getVampire()
                    getHalloweenBonus()
                    showingVampire = true
                }
                .background(Color.clear)
                .font(.title3)
                .alert(isPresented: $showingVampire) {
                    Alert(
                        title: Text("Halloween Special"),
                        message: Text("Vampires get \(halloweenBonus) chips from everyone!"),
                        dismissButton: .default(Text("OK"))
                    )
                }
                Spacer()
                Button("  💣") {
                    showingPrizeWheel = true
                }
                .background(Color.clear)
                .font(.title3)
                .sheet(isPresented: $showingPrizeWheel, content: {
                    Text("Spin to choose the type of Boom Pot").font(.title2)
                    Spacer()
                    FortuneWheel(titles: ["Double 4", "Giveup 1", "Show 1", "Else", "Giveup 1", "Show 1"], size: 320, onSpinEnd: onSpinEnd)
                    Spacer()
                    Text(boomPotMessage).font(.title3)
                        .frame(width: 400, height: 100)
                })
                Spacer()
                Button("New Session") {
                    showingStartPage = true
                }.sheet(isPresented: $showingStartPage, content: {
                    StartView()
                })
                .onAppear() {
                    if playerRecords.isEmpty {
                        for defaultPlayerRecord in PlayerRecord.defaultPlayerRecords {
                            context.insert(defaultPlayerRecord)
                        }
                    }
                }
            }
            .padding(5)
            VStack {
                List {
                    ForEach(players) { player in
                        PlayerView(currentPlayer: player, totalPlayerNumber: players.count, vampires: $vampires)
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
                Button(action: {
                    showingShuffleSeat = true
                    shuffleSeat()
                    vampires.removeAll()
                    halloweenBonus = 0
                }) {
                    Image(systemName: "shuffle")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
                .padding(20)
                .alert(isPresented: $showingShuffleSeat) {
                    Alert(
                        title: Text("Shuffle Seat"),
                        message: Text("Player seat have been shuffled."),
                        dismissButton: .default(Text("OK"))
                    )
                }
                Spacer()
                VStack(spacing: 10) {
                    Text("Average chips: \(getAverageChips())")
                    //                    Text("Total chips: \(getTotalChips())")
                    //                    Text("Total buy in: $ \(getTotalBuyIn())")
                    Text("Halloween bonus: \(halloweenBonus) chips")
                }
                .font(.system(size:13))
                Spacer()
                Button(action: {
                    showingAddPlayer = true
                    vampires.removeAll()
                    halloweenBonus = 0
                }) {
                    Image(systemName: "plus")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
                .padding(20)
                .sheet(isPresented: $showingAddPlayer, content: {
                    AddPlayerView(playerSeatNumber: players.count + 1)
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
        let count = players.count
        var seat: [Int] = []
        for index in 0..<count {
            seat.append(index + 1)
        }
        seat.shuffle()
        for player in players {
            if let index = Array(players).firstIndex(of: player) {
                player.seatNumber = seat[index]
            }
        }
        try? context.save()
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
    
    func getVampire() {
        if players.isEmpty {
            return
        }
        var playerCopy:[Player] = Array(players)
        let numberOfVampire = min(playerCopy.count, (settings.first?.numberOfVampire ?? 1))
        playerCopy.shuffle()
        self.vampires.removeAll()
        for i in 0..<numberOfVampire {
            self.vampires.insert(playerCopy[i].name)
        }
    }
    
    func getHalloweenBonus() {
        halloweenBonus = Int.random(in: 0...(settings.first?.maxRewardChips ?? 100)) / 5 * 5
    }
    private func onSpinEnd(index: Int) {
                if index == 0 {
                    boomPotMessage = "Double board Omaha, skip freplop."
                } else if index == 1 || index == 4 {
                    boomPotMessage = "Everyone has three cards, play double board Texas Holdem by giving up one card by the choice of the player preflop."
                }  else if index == 2 || index == 5 {
                    boomPotMessage = "Everyone has two cards, play double board Texas Holdem with one card face up by the choice of the player preflop."
                } else {
                    boomPotMessage = "Something else."
                }
        // your action here - based on index
    }
}

#Preview {
    CounterView()
}
