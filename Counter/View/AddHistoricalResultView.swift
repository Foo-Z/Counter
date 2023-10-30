//
//  AddHistoricalResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/25/23.
//

import SwiftUI
import SwiftData

struct AddHistoricalResultView: View {
    @Environment(\.modelContext) private var context
    @State private var sessionDate: String = "2023/01/01 19:00"
    @State private var defaultGameLevel: String = "0.5/0.5"
    @State var showingSelector: Bool =  false
    @State private var selectedPlayers: Set<String> = []
    @State private var playerProfits: [Float] = Array(repeating: 0, count: 12)
    @Environment(\.dismiss) private var dismiss
    @Query private var playerRecords: [PlayerRecord]
    
    var body: some View {
        Text("Add Historical Result")
            .font(.title2)
            .padding(10)
        VStack(alignment: .leading, spacing: 5) {
            List {
                VStack {
                    Button("Select Players") {
                        showingSelector = true
                    }.padding(10)
                        .sheet(isPresented: $showingSelector, content: {
                            SelectPlayerView(selectedPlayers: $selectedPlayers)
                        })
                        .buttonStyle(BorderedProminentButtonStyle())
                    ForEach(Array(selectedPlayers), id: \.self) { player in
                        if let index = Array(selectedPlayers).firstIndex(of: player) {
                            HStack {
                                Text("\(player) :")
                                    .frame(width: 150, alignment: .leading)
                                Spacer()
                                TextField("", value: $playerProfits[index], format: .number)
                                    .keyboardType(.numbersAndPunctuation)
                                    .textFieldStyle(.roundedBorder)
                                    .frame(width: 150)
                                Spacer()
                            }
                        }
                    }
                    HStack {
                        Text("Session Date: ")
                            .frame(width: 150, alignment: .leading)
                        Spacer()
                        TextField("", text: $sessionDate)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                        Spacer()
                    }
                    HStack {
                        Text("Game Level: ")
                            .frame(width: 150, alignment: .leading)
                        Spacer()
                        TextField("", text: $defaultGameLevel)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
        .onTapGesture {
            self.hideKeyboard()
        }
        Spacer()
        
        Button("OK") {
            let result = Result()
            result.name = "\(sessionDate) \(defaultGameLevel) MAX\(selectedPlayers.count)"
            for player in Array(selectedPlayers) {
                if let index = Array(selectedPlayers).firstIndex(of: player) {
                    let playerResult = Result.Player(
                        name: player,
                        buyinDollarAmount: (Float)(50),
                        profitDollarAmount: (Float)(playerProfits[index])
                    )
                    let playerRecord = try! playerRecords.filter(#Predicate { $0.name == player }).last ?? PlayerRecord(name: player)
                    if playerProfits[index] >= 0 {
                        result.wins.append(playerResult)
                        playerRecord.totalGameWinned += 1
                    } else {
                        result.loses.append(playerResult)
                        playerRecord.totalGameLost += 1
                    }
                    playerRecord.totalProfit += playerResult.profitDollarAmount
                    playerRecord.gamePlayed.insert(result.name)
                   
                }
            }
            result.wins.sort {$0.profitDollarAmount > $1.profitDollarAmount}
            result.loses.sort {$0.profitDollarAmount > $1.profitDollarAmount}
            let chipLeader = result.wins.first?.name ?? "Feiou"
            let chipLeaderRecord = try! playerRecords.filter(#Predicate { $0.name == chipLeader }).last ?? PlayerRecord(name: chipLeader)
            chipLeaderRecord.chipLeaderCount += 1
            context.insert(result)
            try? context.save()
            dismiss()
        }
        .font(.title2)
        .buttonStyle(BorderedProminentButtonStyle())
    }
}

#Preview {
    AddHistoricalResultView()
}
