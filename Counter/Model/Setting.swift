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
    
    init(increment: Int, valuePerChip: Float) {
        self.increment = increment
        self.valuePerChip = valuePerChip
        self.gameLevel = "0.5/0.5"
    }
    init(increment: Int, valuePerChip: Float, gameLevel: String) {
        self.increment = increment
        self.valuePerChip = valuePerChip
        self.gameLevel = gameLevel
    }
    
}
