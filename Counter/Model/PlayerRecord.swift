//
//  PlayerName.swift
//  Counter
//
//  Created by Feiou Zhang on 10/24/23.
//

import Foundation
import SwiftData

@Model
class PlayerRecord: Identifiable, Equatable {
    var playerId: String = UUID().uuidString
    @Attribute(.unique) var name: String
    var totalProfit: Float
    var totalGameWinned: Int
    var totalGameLost: Int
    var chipLeaderCount: Int
    var gamePlayed: Set<String>
    init(name: String) {
        self.name = name
        self.totalProfit = 0.0
        self.totalGameWinned = 0
        self.totalGameLost = 0
        self.chipLeaderCount = 0
        self.gamePlayed = []
    }
}
