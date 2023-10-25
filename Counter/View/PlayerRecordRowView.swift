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
                .frame(width: 75)
            Text("\(currentPlayer.totalGameWinned)")
                .frame(width: 50)
            Text("\(currentPlayer.totalGameLost)")
                .frame(width: 50)
            Text("\(currentPlayer.chipLeaderCount)")
                .frame(width: 50)
            Text(getProfit(profit: currentPlayer.totalProfit))
                .frame(width: 75)
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
