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
}

#Preview {
    PlayerVpipView(
        currentPlayer: Player(name: "test")
    )
}
