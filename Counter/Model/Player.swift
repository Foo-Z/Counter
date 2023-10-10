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
    var name: String
    var buyIn: Int
    var cashOut: Int
    var vpip: Int = 0
    var pfr: Int = 0
    //var profit: Int = 0
    init(name: String) {
        self.name = name
        buyIn = 200
        cashOut = 0
        vpip = 0
        pfr = 0
        //profit = 0
    }
}

extension Player {
    static let all = [
        Player(name: "Foo"),
        Player(name: "Lw"),
        Player(name: "Zhy"),
        Player(name: "Yhw"),
        Player(name: "ZCL"),
        Player(name: "Yunong"),
        Player(name: "J"),
        Player(name: "Rick"),
        Player(name: "Dingding"),
        Player(name: "Yuan"),
    ]
}
