//
//  ResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/4/23.
//

import SwiftUI
import SwiftData

struct ResultView: View {
    //@Query(filter: #Predicate { $0.profit >= 0}, sort: [SortDescriptor(\Player.profit, order: .reverse)]) var winPlayers: [Player]
//    @Query(filter: #Predicate<Player> { $0.profit < 0}, sort: [SortDescriptor(\Player.profit, order: .reverse)]) private var losePlayers: [Player]
//    init(sort: SortDescriptor<Player>) {
//        _wins = Query(filter: #Predicate({ $0.profit >= 0 }))
//    }
    @Query private var players: [Player]
    var body: some View {
        VStack {
            List {
                ForEach(players) { player in
                    PlayerResultView(currentPlayer: player)
                }
            }
        }
        Spacer()
        Text("---------------- water ----------------")
        Spacer()
        VStack {
            List {
                ForEach(players) { player in
                    PlayerResultView(currentPlayer: player)
                }
            }
        }
    }
}

#Preview {
    ResultView()
}
