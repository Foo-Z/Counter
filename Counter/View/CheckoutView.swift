//
//  CheckoutView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/4/23.
//

import SwiftUI
import SwiftData

struct CheckoutView: View {
    @Environment(\.modelContext) private var context
    @Query private var players: [Player]
    @Query private var settings: [Setting]
    @Query private var results: [Result]
    @Query private var playerRecords: [PlayerRecord]
    
    var body: some View {
        NavigationStack {
            Text("\(getSessionName())")
                .font(.title3)
                .padding(10)
            VStack {
                List {
                    ForEach(players) { player in
                        PlayerCheckoutView(currentPlayer: player)
                    }
                }
            }
            VStack(spacing: 10) {
                Text("\(chipMessage())")
            }
            NavigationLink("Get Result") {
                ResultView(resultId: getSessionName()).onAppear() {
                    saveResult()
                }
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .font(.title2)
            .padding(10)
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
    
    func saveResult() {
        let sessionName = getSessionName()
        if results.last?.name ?? "" == sessionName {
            return
        }
        let result = Result()
        result.name = sessionName
        for player in players {
            let playerResult = Result.Player(
                name: player.name,
                buyin: getBuyinValue(buyin: player.buyIn),
                profit: getProfitValue(profit: abs(player.cashOut - player.buyIn)),
                profitValue: player.cashOut - player.buyIn
            )
            let playerName = player.name 
            let playerRecord = try! playerRecords.filter(#Predicate { $0.name == playerName }).last ?? PlayerRecord(name: "impossible")
            
            if playerResult.profitValue >= 0 {
                result.wins.append(playerResult)
                playerRecord.totalGameWinned += 1
            } else {
                result.loses.append(playerResult)
                playerRecord.totalGameLost += 1
            }
            playerRecord.totalProfit += Float(playerResult.profitValue) * getChipValue()
            playerRecord.gamePlayed.append(sessionName)
        }
        result.wins.sort {$0.profitValue > $1.profitValue}
        result.loses.sort {$0.profitValue > $1.profitValue}
        let playerName = result.wins.first?.name ?? "Feiou"
        let chipLeaderRecord = try! playerRecords.filter(#Predicate { $0.name == playerName }).last ?? PlayerRecord(name: "impossible")
        chipLeaderRecord.chipLeaderCount += 1
        context.insert(result)
    }
    
    func chipMessage() -> String {
        let chipDiff = getChipDiff()
        if chipDiff == 0 {
            return "Total checkout chips and buyin chips are matching."
        } else if chipDiff > 0 {
            return "We are long for \(chipDiff) chips."
        } else {
            return "We are short for \(-chipDiff) chips"
        }
    }
    
    func getChipDiff() -> Int {
        var chipDiff: Int = 0
        for player in players {
            chipDiff += player.buyIn - player.cashOut
        }
        return chipDiff
    }
    
    func getSessionDate() -> Date {
        settings.first?.sessionDate ?? Date.now
    }
    
    func getChipValue() -> Float {
        settings.first?.valuePerChip ?? 0.1
    }
    
    func getGameLevel() -> String {
        settings.first?.gameLevel ?? "0.5/0.5"
    }
    
    func getBuyinValue(buyin: Int) -> String {
        String(format: "$%.2f", Float(buyin) * getChipValue())
    }
    
    func getProfitValue(profit: Int) -> String {
        String(format: "$%.2f", Float(profit) * getChipValue())
    }
    
    func getGameSize() -> Int {
        players.count
    }
    
    func getSessionName() -> String {
        let dateFormatter = DateFormatter()
        let date = getSessionDate()
        dateFormatter.dateFormat = "YYYY/MM/dd HH:mm"
        return "\(dateFormatter.string(from: date))  \(getGameLevel())  MAX\(getGameSize())"
    }
}

#Preview {
    CheckoutView()
}
