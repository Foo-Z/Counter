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
    @Query(sort: \Result.name, order: .reverse) private var results: [Result]
    @Query private var playerRecords: [PlayerRecord]
    @State var showingAddRecord: Bool = false
    //@FirestoreQuery(collectionPath: "Result") private var results:[Result]
    
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
                .font(.system(size: 15))
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
                
                Button(action: {
                    removeAllRecord()
                }) {
                    Image(systemName: "clear")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
                .padding(30)
            }
        }
    }
    func removeAllRecord() {
        for result in results {
            removeRecord(result)
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
    
    func addHistoricalResultRecord(historicalResult: HistoricalResult) {
        let sessionName = historicalResult.sessionName
        let checkResult = try! results.filter(#Predicate { $0.name == sessionName})
        if !checkResult.isEmpty {
            return
        }
        let result = Result(name: sessionName)
        for playerResult in historicalResult.playerResults {
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
        for historicalResult in HistoricalResult.histoicalResults {
            addHistoricalResultRecord(historicalResult: historicalResult)
        }
    }
}

#Preview {
    HistoricalResultView()
}
