//
//  Counter.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import Foundation
import SwiftUI

struct Counter {
    var players: [Player]
    var totalChips: Int
    var counterName: String
    var date: Date
    var increment: Int
    var valuePerChip: Float
    
    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY/MM/dd"
        players = []
        totalChips = 0
        date = Date.now
        counterName = dateFormatter.string(from: date)
        increment = 200
        valuePerChip = 0.01
    }
    
    mutating func buyin(player: Player, buyIn: Int) -> Int {
        guard let playerIndex = players.firstIndex(where: { $0 == player}) else {
            return 0
        }
        players[playerIndex].buyIn += buyIn
        return players[playerIndex].buyIn
    }
    
    mutating func addNewPlayer(name: String) {
        players.append(Player(name: name));
    }
    
    func getTotalChips() -> Int {
        var sum: Int = 0
        for player in players {
            sum += player.buyIn
        }
        return sum
    }
    mutating func changeIncrement(increment: Int) {
        self.increment = increment
    }
}
