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
                .frame(width: 165, alignment: .leading)
            Spacer()
            Text(addFish())
                .font(.system(size:20))
            Spacer()
            Text("(\(String(format: "$%.2f", Float(currentPlayer.buyinDollarAmount))) BuyIn)").font(.system(size: 13))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
    
    func getResult() -> String {
        let r = currentPlayer.profitDollarAmount < 0 ? "lose" : "win"
        return "\(r) \(String(format: "$%.2f", Float(abs(currentPlayer.profitDollarAmount))))"
    }
    
    func addFish() -> String {
        return currentPlayer.profitDollarAmount < 0 ? "🐟" : ""
    }
    func addClow() -> String {
        return currentPlayer.profitDollarAmount < 0 ? "🤡" : ""
    }
}

#Preview {
    PlayerResultView(currentPlayer: Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 50.00))
}
