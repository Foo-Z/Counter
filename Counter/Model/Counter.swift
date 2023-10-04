//
//  Counter.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import Foundation
import SwiftUI
import SwiftData

class Counter: Identifiable {
    var players: [Player]
    var totalChips: Int
    var date: Date
    var increment: Int
    var valuePerChip: Float
    var counterId: String = UUID().uuidString
    
    init() {
        players = []
        totalChips = 0
        date = Date.now
        increment = 200
        valuePerChip = 0.01
    }
    
    func getSessionName() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY/MM/dd"
        return dateFormatter.string(from: date)
    }
    
    func buyin(player: Player, buyIn: Int) -> Int {
        guard let playerIndex = players.firstIndex(where: { $0 == player}) else {
            return 0
        }
        players[playerIndex].buyIn += buyIn
        return players[playerIndex].buyIn
    }
    
    func addNewPlayer(name: String) {
        players.append(Player(name: name));
    }
    
    func getTotalChips() -> Int {
        var sum: Int = 0
        for player in players {
            sum += player.buyIn
        }
        return sum
    }
    
    func changeIncrement(increment: Int) {
        self.increment = increment
    }
}
