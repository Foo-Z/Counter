//
//  CounterViewModel.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import Foundation
import SwiftUI

//@Observable
class CounterViewModel: ObservableObject {
    @Published private var model: Counter = Counter()
    
    var players: [Player] {
        model.players
    }
    
    func getSessionName() -> String {
        model.getSessionName()
    }
    func buyin(player: Player, buyIn: Int) -> Int {
        model.buyin(player: player, buyIn: buyIn)
    }
    
//    func addNewPlayer(name: String) {
//        model.addNewPlayer(name: name)
//    }
    
    func getIncrement() -> Int {
        model.increment
    }
    
    func getTotalChips() -> Int {
        model.getTotalChips()
    }
    
    func changeIncrement(increment: Int) {
        model.increment = increment
    }
}
