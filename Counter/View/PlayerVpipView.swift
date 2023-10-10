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
    var hands: Int
    
    var body: some View {
        HStack {
            Text(currentPlayer.name)
            Spacer()
            Button("VPIP") {
                currentPlayer.vpip += 1
                try? context.save()
            }
            .font(.title2)
                        Text("\(currentPlayer.vpip)")
                            .font(.title)
            
//            Text("\(getVpip())")
//                .font(.title)
//            Button("PFR") {
//                currentPlayer.pfr += 1
//                try? context.save()
//            }
//            .font(.title2)
//            Text("\(currentPlayer.pfr)")
//                .font(.title)
        }
    }
    func getVpip() -> String {
        if hands == 0 {
            return "0.00 %"
        }
        return String(format: "%.2f %", currentPlayer.vpip / hands)
    }
}

#Preview {
    PlayerVpipView(
        currentPlayer: Player(name: "test"), hands: 1
    )
}
