//
//  VpipResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/13/23.
//

import SwiftUI
import SwiftData

struct VpipResultView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @Query private var players: [Player]
    let total_hands: Int
    
    var body: some View {
        Text("VPIP & PFR")
            .font(.title2)
            .padding(10)
        Text("Total hands played: \(total_hands)")
            .font(.title3)
            .padding(10)
        VStack {
            List {
                ForEach(players) { player in
                    PlayerVpipResultView(currentPlayer: player, total_hands: total_hands)
                }
            }
        }
    }
}

#Preview {
    VpipResultView(total_hands: 1)
}
