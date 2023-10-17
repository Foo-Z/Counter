//
//  Setting.swift
//  Counter
//
//  Created by Feiou Zhang on 10/2/23.
//

import Foundation
import SwiftData

@Model
class Setting {
    var id: String = UUID().uuidString
    var increment: Int
    var valuePerChip: Float
    var gameLevel: String
    var sessionDate: Date
    
    init(increment: Int, valuePerChip: Float) {
        self.increment = increment
        self.valuePerChip = valuePerChip
        self.gameLevel = "0.5/0.5"
        self.sessionDate = Date.now
    }
    init(increment: Int, valuePerChip: Float, gameLevel: String) {
        self.increment = increment
        self.valuePerChip = valuePerChip
        self.gameLevel = gameLevel
        self.sessionDate = Date.now
    }
    
    init(increment: Int, valuePerChip: Float, gameLevel: String, sessionDate: Date) {
        self.increment = increment
        self.valuePerChip = valuePerChip
        self.gameLevel = gameLevel
        self.sessionDate = sessionDate
    }
    
}
