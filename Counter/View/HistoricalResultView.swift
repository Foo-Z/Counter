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
                Button("+") {
                    showingAddRecord = true
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
            let playerRecord = try! playerRecords.filter(#Predicate { $0.name == win.name }).last ?? PlayerRecord(name: "impossible")
            playerRecord.totalGameWinned -= 1
            playerRecord.totalProfit -= win.profitDollarAmount
            playerRecord.gamePlayed.remove(result.name)
        }
        for lose in loses {
            let playerRecord = try! playerRecords.filter(#Predicate { $0.name == lose.name }).last ?? PlayerRecord(name: "impossible")
            playerRecord.totalGameLost -= 1
            playerRecord.totalProfit -= lose.profitDollarAmount
            playerRecord.gamePlayed.remove(result.name)
        }
        let chipLeader = result.wins.first?.name ?? "Feiou"
        let chipLeaderRecord = try! playerRecords.filter(#Predicate { $0.name == chipLeader }).last ?? PlayerRecord(name: "impossible")
        chipLeaderRecord.chipLeaderCount -= 1
        context.delete(result)
        try? context.save()
    }
}

#Preview {
    HistoricalResultView()
}
