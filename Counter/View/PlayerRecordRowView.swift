//
//  PlayerRecordRowView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/25/23.
//

import SwiftUI

struct PlayerRecordRowView: View {
    var currentPlayer: PlayerRecord
    var body: some View {
        HStack (alignment: .center) {
            Text("\(currentPlayer.name)")
                .frame(width: 70)
            Text("\(currentPlayer.totalGameWinned + currentPlayer.totalGameLost)")
                .frame(width: 44)
            Text("\(currentPlayer.totalGameWinned)")
                .frame(width: 30)
            Text("\(currentPlayer.totalGameLost)")
                .frame(width: 40)
            Text("\(currentPlayer.chipLeaderCount)")
                .frame(width: 30)
            Text(getProfit(profit: currentPlayer.totalProfit))
                .frame(width: 85)
        }
    }
    func getProfit(profit: Float) ->String {
        if profit < 0 {
            return "-\(String(format: "$%.2f", abs(profit)))"
        }
        return String(format: "$%.2f",profit)
    }
}

#Preview {
    PlayerRecordRowView(currentPlayer: PlayerRecord(name: "Foo"))
}
