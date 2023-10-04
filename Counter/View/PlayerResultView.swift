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
    var currentPlayer: Player
    @State private var result: Float = 0.0
    var body: some View {
        HStack {
            Text("\(currentPlayer.name) \(getResult())")
        }
    }
    func getChipValue() -> Float {
        settings.first?.valuePerChip ?? 0.1
    }
    
//    func buyinValue() -> String {
//        let biv = Float(currentPlayer.buyIn) * getChipValue()
//        return String(format: "%.2f", biv)
//    }
    
    func getResult() -> String {
        let r = currentPlayer.profit < 0 ? "lose" : "win"
        let profit = Float(currentPlayer.profit) * getChipValue()
        return "\(r) \(String(format: "%.2f", profit)) Dollars"
        
    }
}

#Preview {
    PlayerResultView(currentPlayer: Player(name: "test"))
}
