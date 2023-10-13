//
//  PlayerVpipView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/7/23.
//

import SwiftUI

struct PlayerVpipView: View {
    @Environment(\.modelContext) private var context
    var currentPlayer: Player
    
    var body: some View {
        HStack {
            Text(currentPlayer.name)
            Spacer()
            Button("VPIP") {
                currentPlayer.vpip += 1
                try? context.save()
            }
            .buttonStyle(BorderedProminentButtonStyle())
            Text("\(currentPlayer.vpip)")
            Text("   ")
            Button("PFR") {
                currentPlayer.pfr += 1
                try? context.save()
            }
            .buttonStyle(BorderedProminentButtonStyle())
            Text("\(currentPlayer.pfr)")
        }
    }
//    func getVpip() -> String {
//        if total_hands == 0 {
//            return "0.00 %"
//        }
//        return String(format: "%.2f %", currentPlayer.vpip / getTotalHand())
//    }
//    func getPfr() -> String {
//        if total_hands == 0 {
//            return "0.00 %"
//        }
//        return String(format: "%.2f %", currentPlayer.pfr / getTotalHand())
//    }
}

#Preview {
    PlayerVpipView(
        currentPlayer: Player(name: "test")
    )
}
