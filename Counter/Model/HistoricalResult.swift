//
//  HistoricalResult.swift
//  Counter
//
//  Created by Feiou Zhang on 10/31/23.
//

import Foundation

class HistoricalResult {
    var sessionName: String = ""
    var playerResults: [Result.Player] = []
    init(sessionName: String, playerResults: [Result.Player]) {
        self.sessionName = sessionName
        self.playerResults = playerResults
    }
}

extension HistoricalResult {
    static let histoicalResults: [HistoricalResult] = [
        HistoricalResult(sessionName: "2023/08/11 19:00 0.2/0.2 MAX7", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -84.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 6.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -60.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -18.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "Wz", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Pierre", buyinDollarAmount: 50.00, profitDollarAmount: 165.00)
        ]),
        HistoricalResult(sessionName: "2023/08/18 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 55.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -19.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -24.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 62.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 138.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -103.00),
            Result.Player(name: "刘稷", buyinDollarAmount: 50.00, profitDollarAmount: -88.00),
            Result.Player(name: "雪晴", buyinDollarAmount: 50.00, profitDollarAmount: -20.00)
        ]),
        HistoricalResult(sessionName: "2023/08/23 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 175.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 53.00),
            Result.Player(name: "Chelsea", buyinDollarAmount: 50.00, profitDollarAmount: 89.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -40.00),
            Result.Player(name: "Ys", buyinDollarAmount: 50.00, profitDollarAmount: 45.00),
            Result.Player(name: "Cyy", buyinDollarAmount: 50.00, profitDollarAmount: 16.00),
            Result.Player(name: "Peng", buyinDollarAmount: 50.00, profitDollarAmount: -320.00),
            Result.Player(name: "阵雨", buyinDollarAmount: 50.00, profitDollarAmount: -20.00)
        ]),
        HistoricalResult(sessionName: "2023/08/25 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -116.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -7.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 30.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 115.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 9.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -68.00),
            Result.Player(name: "牛牛", buyinDollarAmount: 50.00, profitDollarAmount: 19.00),
            Result.Player(name: "莫百川", buyinDollarAmount: 50.00, profitDollarAmount: 19.00)
        ]),
        HistoricalResult(sessionName: "2023/09/02 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 87.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -99.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -64.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 70.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: 76),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -49.00),
            Result.Player(name: "Chelsea", buyinDollarAmount: 50.00, profitDollarAmount: -89.00),
            Result.Player(name: "Larry", buyinDollarAmount: 50.00, profitDollarAmount: 144.00),
            Result.Player(name: "杰克", buyinDollarAmount: 50.00, profitDollarAmount: -70.00)
        ]),
        HistoricalResult(sessionName: "2023/09/04 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 43.00),
            Result.Player(name: "昊天", buyinDollarAmount: 50.00, profitDollarAmount: -80.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -72.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Jackson", buyinDollarAmount: 50.00, profitDollarAmount: -6.00),
            Result.Player(name: "Cc", buyinDollarAmount: 50.00, profitDollarAmount: -6.00),
            Result.Player(name: "Victor", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "Hanna", buyinDollarAmount: 50.00, profitDollarAmount: 137.00)
        ]),
        HistoricalResult(sessionName: "2023/09/06 19:00 0.2/0.2 MAX7", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 81.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -44.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 14.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -62.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 48.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -12.00),
            Result.Player(name: "Yyyll", buyinDollarAmount: 50.00, profitDollarAmount: -20.00)
        ]),
        HistoricalResult(sessionName: "2023/09/08 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 12.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 58.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 3.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -40.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -14.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: 69.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -27.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 21.00),
            Result.Player(name: "杰克", buyinDollarAmount: 50.00, profitDollarAmount: -80.00)
        ]),
        HistoricalResult(sessionName: "2023/09/14 19:00 0.2/0.2 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 51.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 152.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -36.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -3.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -46.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -12.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -80.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "Chelsea", buyinDollarAmount: 50.00, profitDollarAmount: 16.00)
        ]),
        HistoricalResult(sessionName: "2023/09/15 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 9.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -16.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 15.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 82.00),
            Result.Player(name: "昊天", buyinDollarAmount: 50.00, profitDollarAmount: 130.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -110.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -16.00)
        ]),
        HistoricalResult(sessionName: "2023/10/29 13:00 0.5/0.5 MAX7", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 89.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 11.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 23.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -210.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 130.00)
        ])
    ]
}
