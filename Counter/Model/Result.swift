//
//  Result.swift
//  Counter
//
//  Created by Feiou Zhang on 10/4/23.
//

import Foundation
import SwiftData

@Model
class Result {
    var id: String = UUID().uuidString
    var name: String
    var wins: [Player]
    var loses: [Player]
    
    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY/MM/dd"
        name = dateFormatter.string(from: Date.now)
        wins = []
        loses = []
    }
}
