//
//  PlayerCheckoutView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/3/23.
//

import SwiftUI
import SwiftData

struct PlayerCheckoutView: View {
    @Environment(\.modelContext) private var context
    var currentPlayer: Player
    @State private var cashout: Int = 0
    
    var body: some View {
        HStack {
            Text("\(currentPlayer.name) bought: \(currentPlayer.buyIn)")
            Spacer()
            TextField("", value: $cashout, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(width: 100)
            Button("OK") {
                currentPlayer.cashOut = cashout
                currentPlayer.profit = currentPlayer.cashOut - currentPlayer.buyIn
                try? context.save()
            }
        }
    }
}

#Preview {
    PlayerCheckoutView(currentPlayer: Player(name: "test"))
}
