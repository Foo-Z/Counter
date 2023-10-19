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
    struct Player: Identifiable, Codable, Hashable {
        var id = UUID()
        var name: String
        var buyin: String
        var profit: String
        var profitValue: Int
    }
    
    @Attribute(.unique) var name: String
    var wins: [Result.Player]
    var loses: [Result.Player]
    
    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY/MM/dd"
        name = dateFormatter.string(from: Date.now)
        wins = []
        loses = []
    }
    
}
