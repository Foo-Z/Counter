//
//  ResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/4/23.
//

import SwiftUI
import SwiftData
import EffectsLibrary

struct ResultView: View {
    //@Query(filter: #Predicate<Player> { $0.buyIn >= 1000 }, sort: [SortDescriptor(\Player.buyIn, order: .reverse)]) var winPlayers: [Player]
    //filter: #Predicate { $0.profit >= 0},
//    @Query(filter: #Predicate<Player> { $0.profit < 0}, sort: [SortDescriptor(\Player.profit, order: .reverse)]) private var losePlayers: [Player]
//    init(sort: SortDescriptor<Player>) {
//        _wins = Query(filter: #Predicate({ $0.profit >= 0 }))
//    }
    @Environment(\.modelContext) private var context
    @Query private var results: [Result]
   // @Query(filter: #Predicate<Player> { $0.cashOut >= $0.buyIn }) var winPlayers: [Player]

//    let playerPredicate = #Predicate<Player> {
//        $0.profit >= 0
//    }
//    let descriptor = FetchDescriptor<Player>(predicate: playerPredicate)
//    let wins = try context.fetch(descriptor)
//    let wins = #Predicate<Player> { player in
//        player.profit >= 0
//    }
    //@Query private var players: [Player]
    var resultId: String
    var body: some View {
        ZStack {
            VStack {
                Text(results.last?.name ?? "").font(.title)
                Text("Chip leader is: \(getChipLeader())").font(.title2)
            }
            FireworksView()
        }.frame(height: 90)
        VStack {
            List {
                ForEach(results.last?.wins ?? []) { player in
                    PlayerResultView(currentPlayer: player)
                }
            }
        }
        Spacer()
        Text("---------------- water ----------------")
        Spacer()
        VStack {
            List {
                ForEach(results.last?.loses ?? []) { player in
                    PlayerResultView(currentPlayer: player)
                }
            }
        }
    }
    func getChipLeader() -> String {
        var maxProfit = 0
        var leader: String = ""
        for player in results.last?.wins ?? [] {
            if player.profitValue > maxProfit {
                maxProfit = player.profitValue
                leader = player.name
            }
        }
        return leader
    }
}

#Preview {
    ResultView(resultId: "uuid")
}
