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
    
    init(increment: Int, valuePerChip: Float) {
        self.increment = increment
        self.valuePerChip = valuePerChip
    }
}
