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
    var body: some View {
        NavigationStack {
            VStack {
                Text("Player Records")
                    .font(.title2)
                    .padding(10)
                List {
                    HStack(alignment: .center) {
                        Text("Name")
                            .frame(width: 70, alignment: .center)
                        Text("Game")
                            .frame(width: 45, alignment: .center)
                        Text("Win")
                            .frame(width: 30, alignment: .center)
                        Text("Lose")
                            .frame(width: 40, alignment: .center)
                        Text("CL")
                            .frame(width: 30, alignment: .center)
                        Text("Profit")
                            .frame(width: 85, alignment: .center)
                        Text(" ")
                    }
                    ForEach(playerRecords) { playerRecord in
                        NavigationLink(destination: PlayerHistoricalResultView(playerName: playerRecord.name, resultNames: Array(playerRecord.gamePlayed))) {
                            PlayerRecordRowView(currentPlayer: playerRecord)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}

#Preview {
    PlayerRecordView()
}
