//
//  Player.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import Foundation
import SwiftData

@Model
class Player: Identifiable, Equatable {
    var playerId: String = UUID().uuidString
    var seatNumber: Int
    var name: String
    var buyIn: Int
    var cashOut: Int
    var vpip: Int = 0
    var pfr: Int = 0

    init(name: String, buyIn: Int, seatNumber: Int) {
        self.seatNumber = seatNumber
        self.name = name
        self.buyIn = buyIn
        cashOut = 0
        vpip = 0
        pfr = 0
    }
}
