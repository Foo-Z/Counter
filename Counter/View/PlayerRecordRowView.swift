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
            Spacer()
            Text("\(getRank(index: rank))")
                .frame(width: 23, alignment: .center)
            Text("\(currentPlayer.name)")
                .frame(width: 45, alignment: .center)
            Text("\(currentPlayer.totalGameWinned + currentPlayer.totalGameLost)")
                .frame(width: 23, alignment: .center)
            Text("\(currentPlayer.totalGameWinned)")
                .frame(width: 23, alignment: .center)
            Text("\(currentPlayer.totalGameLost)")
                .frame(width: 23, alignment: .center)
            Text(getWinRate(win: currentPlayer.totalGameWinned, loss: currentPlayer.totalGameLost))
                .frame(width: 33, alignment: .center)
            Text("\(currentPlayer.chipLeaderCount)")
                .frame(width: 23, alignment: .center)
            Text(getProfitPerGame(profit: currentPlayer.totalProfit, totalGame: currentPlayer.totalGameLost + currentPlayer.totalGameWinned))
                .frame(width: 43, alignment: .center)
            Text(getProfit(profit: currentPlayer.totalProfit))
                .frame(width: 48, alignment: .center)
        }.font(.system(size: 9))
    }
    
    func getWinRate(win: Int, loss: Int) -> String {
        if win + loss == 0 {
            return "0 %"
        }
        let rate = win * 100 / (win + loss);
        return "\(rate)%";
    }
    
    func getProfit(profit: Float) ->String {
        if profit < 0 {
            return "-\(String(format: "$%.2f", abs(profit)))"
        }
        return String(format: "$%.2f",profit)
    }
    
    func getProfitInt(profit: Float) -> String {
        if profit < 0 {
            return "-\(Int(abs(profit)))"
        }
        return "\(Int(profit))"
    }
    
    func getProfitPerGameInt(profit: Float, totalGame: Int) -> String {
        if profit < 0 {
            return "-\(Int(abs(profit)) / totalGame)"
        }
        return "\(Int(profit) / totalGame)"
    }
    
    func getProfitPerGame(profit: Float, totalGame: Int) -> String {
        
        if profit < 0 {
            return "-\(String(format: "$%.2f", (abs(profit) / Float(totalGame))))"
        }
        return String(format: "$%.2f", profit / Float(totalGame))
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
