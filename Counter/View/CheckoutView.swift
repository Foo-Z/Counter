//
//  CheckoutView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/4/23.
//

import SwiftUI
import SwiftData

struct CheckoutView: View {
    @Query private var players: [Player]
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(players) { player in
                        PlayerCheckoutView(currentPlayer: player)
                    }
                }
            }
            VStack(spacing: 10) {
                Text("Total chips are: \(getTotalChips())")
            }
            NavigationLink("Get Result") {
                ResultView()
            }
        }
    }
    func getTotalChips() -> Int {
        var totalChips: Int = 0
        for player in players {
            totalChips += player.buyIn - player.cashOut
        }
        return totalChips
    }
}

#Preview {
    CheckoutView()
}
