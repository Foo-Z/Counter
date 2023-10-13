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
            Button("Buy In") {
                currentPlayer.buyIn += getIncrement()
                try? context.save()
            }
            .buttonStyle(BorderedProminentButtonStyle())
           // .font(.title3)
            Text("\(currentPlayer.buyIn)")
               // .font(.title3)
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
