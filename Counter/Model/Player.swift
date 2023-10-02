//
//  Player.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import Foundation

struct Player: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var buyIn: Int
    var cashOut: Int
    init(name: String) {
        self.name = name
        buyIn = 200
        cashOut = 0
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
