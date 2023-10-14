//
//  PlayerVpipResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/13/23.
//

import SwiftUI

struct PlayerVpipResultView: View {
    var currentPlayer: Player
    var total_hands: Int
    var body: some View {
        HStack (alignment: .center) {
            Text("\(currentPlayer.name)")
            Spacer()
            Text("VPIP: \(getVpip())%    PFR: \(getPfr())%")
        }
    }
    
    func getVpip() -> String {
        return String(format: "%.1f %", Float(currentPlayer.vpip) / Float(total_hands) * 100)
    }
    func getPfr() -> String {
        if total_hands == 0 {
            return "0.00 %"
        }
        return String(format: "%.1f %", Float(currentPlayer.pfr) / Float(total_hands) * 100)
    }
}

#Preview {
    PlayerVpipResultView(currentPlayer: Player(name: "test"), total_hands: 1)
}
