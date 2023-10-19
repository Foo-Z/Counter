//
//  PlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData

struct PlayerView: View {
    @Environment(\.modelContext) private var context
    @Query private var settings: [Setting]
    var currentPlayer: Player
    
    var body: some View {
        HStack {
            Text(currentPlayer.name)
            Spacer()
            Text("\(currentPlayer.buyIn)")
                .frame(width: 60)
            Button("Buy In") {
                currentPlayer.buyIn += getIncrement()
                try? context.save()
            }
            .buttonStyle(BorderedProminentButtonStyle())
        }
    }
    
    func getIncrement() -> Int {
        settings.first?.increment ?? 500
    }
}
#Preview {
    PlayerView(
        currentPlayer: Player(name: "test")
    )
}
