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
        VStack {
            Text("Player Records")
                .font(.title2)
                .padding(10)
            List {
                HStack {
                    Text("Name")
                        .frame(width: 75)
                    Text("Win")
                        .frame(width: 50)
                    Text("Lose")
                        .frame(width: 50)
                    Text("CL")
                        .frame(width: 50)
                    Text("Profit")
                        .frame(width: 75)
                }
                ForEach(playerRecords) { playerRecord in
                    PlayerRecordRowView(currentPlayer: playerRecord)
                }
            }
        }
    }
}

#Preview {
    PlayerRecordView()
}
