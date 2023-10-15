//
//  PlayerResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/4/23.
//

import SwiftUI
import SwiftData

struct PlayerResultView: View {
    @Environment(\.modelContext) private var context
    @Query private var settings: [Setting]
    var currentPlayer: Result.Player
    @State private var result: Float = 0.0
    var body: some View {
        HStack {
            Text("\(currentPlayer.name) \(getResult())")
            Spacer()
            Text("(\(currentPlayer.buyin) BuyIn)").font(.system(size: 13))
        }
    }
    
    func getResult() -> String {
        let diff = currentPlayer.profitValue
        let r = diff < 0 ? "lose" : "win"
        return "\(r) \(currentPlayer.profit)"
        
    }
}

#Preview {
    PlayerResultView(currentPlayer: Result.Player(name: "test", buyin: "10", profit: "20", profitValue: 20))
}
