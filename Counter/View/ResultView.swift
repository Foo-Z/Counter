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
    var resultId: String
    @Environment(\.modelContext) private var context
    @Query() private var results: [Result]
    var body: some View {
        ZStack {
            VStack {
                Text(getResult().name).font(.title3)
                Text("Chip leader is: \(getChipLeader())").font(.title2)
            }
            FireworksView()
        }.frame(height: 90)
        VStack {
            List {
                ForEach(getResult().wins) { player in
                    PlayerResultView(currentPlayer: player)
                }
            }
        }
        Spacer()
        Text("---------------- water ----------------")
        Spacer()
        VStack {
            List {
                ForEach(getResult().loses) { player in
                    PlayerResultView(currentPlayer: player)
                }
            }
        }
    }
    
    func getResult() -> Result {
        try! results.filter(#Predicate { $0.name == resultId }).last ?? Result()
    }
    
    func getChipLeader() -> String {
        getResult().wins.first?.name ?? ""
    }
}

#Preview {
    ResultView(resultId: "uuid")
}
