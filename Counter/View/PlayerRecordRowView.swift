//
//  PlayerRecordRowView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/25/23.
//

import SwiftUI

struct PlayerRecordRowView: View {
    var currentPlayer: PlayerRecord
    var rank: Int
    var body: some View {
        HStack (alignment: .center) {
            Spacer()
            Spacer()
            Text("\(getRank(index: rank))")
                .frame(width: 40, alignment: .center)
            Text("\(currentPlayer.name)")
                .frame(width: 65, alignment: .center)
            Text("\(currentPlayer.totalGameWinned + currentPlayer.totalGameLost)")
                .frame(width: 40, alignment: .center)
            Text("\(currentPlayer.totalGameWinned)")
                .frame(width: 25, alignment: .center)
            Text("\(currentPlayer.totalGameLost)")
                .frame(width: 30, alignment: .center)
            Text("\(currentPlayer.chipLeaderCount)")
                .frame(width: 25, alignment: .center)
            Text(getProfit(profit: currentPlayer.totalProfit))
                .frame(width: 80, alignment: .center)
        }
    }
    func getProfit(profit: Float) ->String {
        if profit < 0 {
            return "-\(String(format: "$%.2f", abs(profit)))"
        }
        return String(format: "$%.2f",profit)
    }
    func getRank(index: Int) -> String {
        switch index {
        case 0:
            return "🏅"
        case 1:
            return "🥈"
        case 2:
            return "🥉"
        default:
            return "\(index + 1)"
        }
    }
}

#Preview {
    PlayerRecordRowView(currentPlayer: PlayerRecord(name: "Foo"), rank: 1)
}
