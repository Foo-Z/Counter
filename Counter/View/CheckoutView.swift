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
                Text("\(chipMessage())")
            }
            NavigationLink("Get Result") {
                ResultView().onAppear() {
                    saveResult()
                }
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .font(.title2)
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
    func saveResult() {
        let result = Result()
        for player in players {
            if player.cashOut >= player.buyIn {
                result.wins.append(player)
            } else {
                result.loses.append(player)
            }
        }
        result.wins.sort {
            ($0.cashOut - $0.buyIn) > ($1.cashOut - $1.buyIn)
        }
        result.loses.sort {
            ($0.cashOut - $0.buyIn) > ($1.cashOut - $1.buyIn)
        }
        context.insert(result)
    }
    func chipMessage() -> String {
        var chipDiff = getChipDiff()
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
}

#Preview {
    CheckoutView()
}
