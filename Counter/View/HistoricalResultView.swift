//
//  HistoricalResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/13/23.
//

import SwiftUI
import SwiftData

struct HistoricalResultView: View {
    @Environment(\.modelContext) private var context
    @Query(sort: \Result.name) private var results: [Result]
    @Query private var playerRecords: [PlayerRecord]
    @State var showingAddRecord: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Historical Results")
                .font(.title2)
                .padding(10)
            VStack {
                List {
                    ForEach(results) { result in
                        NavigationLink("\(result.name)") {
                            ResultView(resultId: result.name)
                        }
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            removeRecord(results[index])
                        }
                    })
                }
            }
            HStack {
                Button(action: {
                    addHistoricalResultRecords()
                }) {
                    Image(systemName: "arrow.down")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
                .padding(30)
                
                Button(action: {
                    showingAddRecord = true
                }) {
                    Image(systemName: "plus")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title2)
                .padding(30)
                .sheet(isPresented: $showingAddRecord, content: {
                    AddHistoricalResultView()
                })
            }
        }
    }
    
    func removeRecord(_ result: Result) {
        let wins = result.wins
        let loses = result.loses
        for win in wins {
            let playerRecord = try! playerRecords.filter(#Predicate { $0.name == win.name }).last ?? PlayerRecord(name: win.name)
            playerRecord.totalGameWinned = max(0, playerRecord.totalGameWinned - 1)
            playerRecord.totalProfit -= win.profitDollarAmount
            playerRecord.gamePlayed.remove(result.name)
        }
        for lose in loses {
            let playerRecord = try! playerRecords.filter(#Predicate { $0.name == lose.name }).last ?? PlayerRecord(name: lose.name)
            playerRecord.totalGameLost = max(0, playerRecord.totalGameLost - 1)
            playerRecord.totalProfit -= lose.profitDollarAmount
            playerRecord.gamePlayed.remove(result.name)
        }
        let chipLeader = result.wins.first?.name ?? "Feiou"
        let chipLeaderRecord = try! playerRecords.filter(#Predicate { $0.name == chipLeader }).last ?? PlayerRecord(name: chipLeader)
        chipLeaderRecord.chipLeaderCount = max(0, chipLeaderRecord.chipLeaderCount - 1)
        context.delete(result)
        try? context.save()
    }
    
    func addHistoricalResultRecord(sessionName: String, playerResults: [Result.Player]) {
        let checkResult = try! results.filter(#Predicate { $0.name == sessionName})
        if !checkResult.isEmpty {
            return
        }
        let result = Result(name: sessionName)
        for playerResult in playerResults {
            let playerRecord = try! playerRecords.filter(#Predicate { $0.name == playerResult.name }).last ?? PlayerRecord(name: playerResult.name)
            context.insert(playerRecord)
            try? context.save()
            if playerResult.profitDollarAmount >= 0 {
                result.wins.append(playerResult)
                playerRecord.totalGameWinned += 1
            } else {
                result.loses.append(playerResult)
                playerRecord.totalGameLost += 1
            }
            playerRecord.totalProfit += playerResult.profitDollarAmount
            playerRecord.gamePlayed.insert(result.name)
        }
        result.wins.sort {$0.profitDollarAmount > $1.profitDollarAmount}
        result.loses.sort {$0.profitDollarAmount > $1.profitDollarAmount}
        let chipLeader = result.wins.first?.name ?? "Feiou"
        let chipLeaderRecord = try! playerRecords.filter(#Predicate { $0.name == chipLeader }).last ?? PlayerRecord(name: chipLeader)
        chipLeaderRecord.chipLeaderCount += 1
        context.insert(result)
        try? context.save()
    }
    
    func addHistoricalResultRecords() {
        addHistoricalResultRecord(
            sessionName: "2023/08/11 19:00 0.2/0.2 MAX7", playerResults: [
                Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -84.00),
                Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 6.00),
                Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -60.00),
                Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -18.00),
                Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
                Result.Player(name: "Wz", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
                Result.Player(name: "Pierre", buyinDollarAmount: 50.00, profitDollarAmount: 165.00)
            ]
        )
        addHistoricalResultRecord(
            sessionName: "2023/08/18 19:00 0.2/0.2 MAX8", playerResults: [
                Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 55.00),
                Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -19.00),
                Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -24.00),
                Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 62.00),
                Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 138.00),
                Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -103.00),
                Result.Player(name: "刘稷", buyinDollarAmount: 50.00, profitDollarAmount: -88.00),
                Result.Player(name: "雪晴", buyinDollarAmount: 50.00, profitDollarAmount: -20.00)
            ]
        )
        addHistoricalResultRecord(
            sessionName: "2023/08/23 19:00 0.2/0.2 MAX8", playerResults: [
                Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 175.00),
                Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 53.00),
                Result.Player(name: "Chelsea", buyinDollarAmount: 50.00, profitDollarAmount: 89.00),
                Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -40.00),
                Result.Player(name: "Ys", buyinDollarAmount: 50.00, profitDollarAmount: 45.00),
                Result.Player(name: "Cyy", buyinDollarAmount: 50.00, profitDollarAmount: 16.00),
                Result.Player(name: "Peng", buyinDollarAmount: 50.00, profitDollarAmount: -320.00),
                Result.Player(name: "阵雨", buyinDollarAmount: 50.00, profitDollarAmount: -20.00)
            ]
        )
        addHistoricalResultRecord(
            sessionName: "2023/10/29 13:00 0.5/0.5 MAX7", playerResults: [
                Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
                Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
                Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 89.00),
                Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 11.00),
                Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 23.00),
                Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -210.00),
                Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 130.00)
            ]
        )
    }
}

#Preview {
    HistoricalResultView()
}
