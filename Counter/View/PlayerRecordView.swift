//
//  PlayerRecordView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/25/23.
//

import SwiftUI
import SwiftData

struct PlayerRecordView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @Query(sort: \PlayerRecord.totalProfit, order: .reverse) private var playerRecords: [PlayerRecord]
    @State private var showingAlert = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Player Records")
                    .font(.title2)
                    .padding(10)
                List {
                    HStack(alignment: .center) {
                        Text("Rank")
                            .frame(width: 25, alignment: .center)
                        Text("Name")
                            .frame(width: 35, alignment: .center)
                        Text("Game")
                            .frame(width: 28, alignment: .center)
                        Text("Win")
                            .frame(width: 20, alignment: .center)
                        Text("Lose")
                            .frame(width: 28, alignment: .center)
                        Text("Win %")
                            .frame(width: 28, alignment: .center)
                        Text("CL")
                            .frame(width: 23, alignment: .center)
                        Text("$ Game")
                            .frame(width: 40, alignment: .center)
                        Text("  Total $")
                            .frame(width: 40, alignment: .center)
                       // Text(" ")
                    }.font(.system(size: 8))
                    ForEach(Array(playerRecords), id: \.name) { playerRecord in
                        if let index = Array(playerRecords).firstIndex(of: playerRecord) {
                            NavigationLink(destination: PlayerHistoricalResultView(playerName: playerRecord.name, resultNames: Array(playerRecord.gamePlayed).sorted(by: >))) {
                                PlayerRecordRowView(currentPlayer: playerRecord, rank: index)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            if !playerRecords[index].gamePlayed.isEmpty {
                                showingAlert = true
                            } else {
                                context.delete(playerRecords[index])
                            }
                        }
                    })
                    .alert(isPresented: $showingAlert) {
                        Alert(
                            title: Text("Invalid operation!"),
                            message: Text("Please remove all historical results the player played before removing the player."),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                }
                .font(.system(size: 13))
            }
        }
    }
}

#Preview {
    PlayerRecordView()
}
