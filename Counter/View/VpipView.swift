//
//  VpipView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/7/23.
//

import SwiftUI
import SwiftData

struct VpipView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @Query private var players: [Player]
    
    var body: some View {
        NavigationStack {
            Text("VPIP & PFR")
                .font(.title2)
                .padding(10)
            Text("Total hands played: \(getTotalHand())")
                .font(.title3)
                .padding(10)
            VStack {
                List {
                    ForEach(players) { player in
                        PlayerVpipView(currentPlayer: player)
                            .swipeActions(edge: .leading) {
                                Button("-VPIP") {
                                    player.vpip -= 1
                                    try? context.save()
                                }
                                .tint(.purple)
                                Button("-PFR") {
                                    player.pfr -= 1
                                    try? context.save()
                                }
                                .tint(.orange)
                            }
                    }
                }
            }
            NavigationLink("Get Result") {
                VpipResultView(total_hands: getTotalHand())
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .font(.title2)
            .padding(10)
        }
    }
    
    func getTotalHand() -> Int {
        var hands = 0
        for player in players {
            hands += player.pfr
        }
        return hands
    }
}

#Preview {
    VpipView()
}
