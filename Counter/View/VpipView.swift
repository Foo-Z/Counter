//
//  VpipView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/7/23.
//

import SwiftUI
import SwiftData

struct VpipView: View {
   // @Environment(\) var countHands
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @Query private var players: [Player]
    @State var countHands = 0
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Text("Total hands played: \(countHands)")
                Spacer()
                Button("+1") {
                    countHands += 1
                }
                .font(.title2)
                .buttonStyle(BorderedProminentButtonStyle())
            }
            .padding(20)
            List {
                ForEach(players) { player in
                    PlayerVpipView(currentPlayer: player, hands: countHands)
                }
            }
        }
    }
}

#Preview {
    VpipView()
}
