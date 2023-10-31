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

extension PlayerRecord {
    static let defaultPlayerRecords: [PlayerRecord] = [
        PlayerRecord(name: "Feiou"),
        PlayerRecord(name: "Lw"),
        PlayerRecord(name: "Rick"),
        PlayerRecord(name: "Yunong"),
        PlayerRecord(name: "Colin"),
        PlayerRecord(name: "恰空"),
        PlayerRecord(name: "浩文"),
        PlayerRecord(name: "涵羽"),
        PlayerRecord(name: "王皓"),
        PlayerRecord(name: "超伦"),
        PlayerRecord(name: "叮叮"),
        PlayerRecord(name: "Herry"),
        PlayerRecord(name: "Weiran"),
        PlayerRecord(name: "Mika"),
        PlayerRecord(name: "少桐"),
        PlayerRecord(name: "Lei"),
        PlayerRecord(name: "Chelsea"),
        PlayerRecord(name: "Ac"),
        PlayerRecord(name: "邵楠")
    ]
}
