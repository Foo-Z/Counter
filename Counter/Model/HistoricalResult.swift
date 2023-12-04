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
        HistoricalResult(sessionName: "2023/09/16 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 134.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -7.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 67.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -40.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 102.00),
            Result.Player(name: "Xingyu", buyinDollarAmount: 50.00, profitDollarAmount: -180.00),
            Result.Player(name: "Lou YF", buyinDollarAmount: 50.00, profitDollarAmount: -19.00),
            Result.Player(name: "Scotty", buyinDollarAmount: 50.00, profitDollarAmount: -58.00)
        ]),
        HistoricalResult(sessionName: "2023/09/19 19:00 0.2/0.2 MAX7", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 40.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 10.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 220.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -33.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 226.00),
            Result.Player(name: "Ys", buyinDollarAmount: 50.00, profitDollarAmount: -256.00),
            Result.Player(name: "Az", buyinDollarAmount: 50.00, profitDollarAmount: -207.00)
        ]),
        HistoricalResult(sessionName: "2023/09/22 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 10.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 25.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 150.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 25.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -80.00),
            Result.Player(name: "Tao", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "昊天", buyinDollarAmount: 50.00, profitDollarAmount: 120.00)
        ]),
        HistoricalResult(sessionName: "2023/09/23 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -82.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -33.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -55.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -37.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 162.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 5.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -15.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 1.00)
        ]),
        HistoricalResult(sessionName: "2023/09/27 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 28.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 6.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: -55.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 35.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -21.00)
        ]),
        HistoricalResult(sessionName: "2023/09/29 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 130.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -64.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 114.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -7.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -46.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -127.00),
            Result.Player(name: "Jk", buyinDollarAmount: 50.00, profitDollarAmount: -122.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 158.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -15.00)
        ]),
        HistoricalResult(sessionName: "2023/09/30 19:00 0.2/0.2 MAX7", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -120.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -51.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 10.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 153.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: 120.00)
        ]),
        HistoricalResult(sessionName: "2023/10/02 19:00 0.2/0.2 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 80.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 77.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 22.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -6.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -120.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -105.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 59.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 61.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -80.00)
        ]),
        HistoricalResult(sessionName: "2023/10/04 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -220.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -105.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 67.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 105.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -62.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 5.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 83.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: 128.00)
        ]),
        HistoricalResult(sessionName: "2023/10/06 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 80.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 116.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -70.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -130.00),
            Result.Player(name: "昊天", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: -47.00),
            Result.Player(name: "Ac", buyinDollarAmount: 50.00, profitDollarAmount: -7.00),
            Result.Player(name: "哲铭", buyinDollarAmount: 50.00, profitDollarAmount: 78.00)
        ]),
        HistoricalResult(sessionName: "2023/10/07 19:00 0.2/0.2 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 71.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -5.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: -78.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: 100.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -86.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -47.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 53.00),
            Result.Player(name: "千千", buyinDollarAmount: 50.00, profitDollarAmount: -54.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: 45.00)
        ]),
        HistoricalResult(sessionName: "2023/10/08 19:00 0.2/0.2 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Larry", buyinDollarAmount: 50.00, profitDollarAmount: 61.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 34.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 9.00),
            Result.Player(name: "Joyce", buyinDollarAmount: 50.00, profitDollarAmount: -80.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 147.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -120.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -117.00),
            Result.Player(name: "滔", buyinDollarAmount: 50.00, profitDollarAmount: 90.00),
            Result.Player(name: "Yutao", buyinDollarAmount: 50.00, profitDollarAmount: -20.00)
        ]),
        HistoricalResult(sessionName: "2023/10/10 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 59.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 10.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -60.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -27.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 127.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 45.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -96.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -94.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: 15.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 20.00)
        ]),
        HistoricalResult(sessionName: "2023/10/11 19:00 0.2/0.2 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 50.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 143.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 10.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -59.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -46.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -6.00),
            Result.Player(name: "Jk", buyinDollarAmount: 50.00, profitDollarAmount: -100.00)
        ]),
        HistoricalResult(sessionName: "2023/10/13 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 143.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -13.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -66.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 80.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 258.00),
            Result.Player(name: "Ac", buyinDollarAmount: 50.00, profitDollarAmount: 51.00),
            Result.Player(name: "Larry", buyinDollarAmount: 50.00, profitDollarAmount: -170.00),
            Result.Player(name: "Boom", buyinDollarAmount: 50.00, profitDollarAmount: -117.00),
            Result.Player(name: "滔", buyinDollarAmount: 50.00, profitDollarAmount: -165.00)
        ]),
        HistoricalResult(sessionName: "2023/10/15 19:00 0.5/0.5 MAX11", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 12.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 127.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -84.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -114.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 148.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 49.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 168.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -126.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -150.00),
            Result.Player(name: "滔", buyinDollarAmount: 50.00, profitDollarAmount: 21.00)
        ]),
        HistoricalResult(sessionName: "2023/10/16 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 161.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 101.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -15.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -250.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 50.00),
            Result.Player(name: "Keanu", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
            Result.Player(name: "Edward", buyinDollarAmount: 50.00, profitDollarAmount: 45.00)
        ]),
        HistoricalResult(sessionName: "2023/10/18 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 43.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 140.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 55.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 125.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 26.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -126.00),
            Result.Player(name: "Bao", buyinDollarAmount: 50.00, profitDollarAmount: -65.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -106.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -41.00)
        ]),
        HistoricalResult(sessionName: "2023/10/19 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 94.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -114.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -76.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: 4.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: 66.00),
            Result.Player(name: "Keanu", buyinDollarAmount: 50.00, profitDollarAmount: 45.00)
        ]),
        HistoricalResult(sessionName: "2023/10/20 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 112.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -147.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 76.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 272.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: -99.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -200.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: 125.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -65.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -55.00)
        ]),
        HistoricalResult(sessionName: "2023/10/21 19:00 0.5/0.5 MAX11", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 133.00),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: -51.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -55.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -124.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 140.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 10.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 183.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: -150.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 113.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -200.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 1.00)
        ]),
        HistoricalResult(sessionName: "2023/10/23 19:00 0.5/0.5 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 206.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -53.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -26.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 181.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "J", buyinDollarAmount: 50.00, profitDollarAmount: -434.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: 155.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 22.00)
        ]),
        HistoricalResult(sessionName: "2023/10/25 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 216.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 26.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 188.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 48.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -74.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -176.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -5.00),
            Result.Player(name: "Chelsea", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -77.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -96.00)
        ]),
        HistoricalResult(sessionName: "2023/10/26 19:00 0.5/0.5 MAX11", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 70.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -222.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -95.00),
            Result.Player(name: "Chelsea", buyinDollarAmount: 50.00, profitDollarAmount: 10.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -40.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 94.00, profitDollarAmount: 94.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 150.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: 54.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 0.00)
        ]),
        HistoricalResult(sessionName: "2023/10/27 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 167.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: 69.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 205.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -200.00),
            Result.Player(name: "Ac", buyinDollarAmount: 50.00, profitDollarAmount: -48.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -80.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -62.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -50.00)
        ]),
        HistoricalResult(sessionName: "2023/10/28 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -86.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -48.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 87.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: 33.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 90.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -200.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -56.00),
            Result.Player(name: "Jessy", buyinDollarAmount: 50.00, profitDollarAmount: 34.00),
            Result.Player(name: "Kk", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "Cq", buyinDollarAmount: 50.00, profitDollarAmount: 137.00)
        ]),
        HistoricalResult(sessionName: "2023/10/29 13:00 0.5/0.5 MAX7", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 89.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 11.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 23.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -210.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 130.00)
        ]),
        HistoricalResult(sessionName: "2023/10/31 13:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 25.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -46.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 260.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -88.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 16.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: 82.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -100.00)
        ]),
        HistoricalResult(sessionName: "2023/11/02 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 270.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -27.00),
            Result.Player(name: "Chelsea", buyinDollarAmount: 50.00, profitDollarAmount: 62.00),
            Result.Player(name: "李伟楠", buyinDollarAmount: 50.00, profitDollarAmount: -110.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 43.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -293.00),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: 170.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -65.00)
        ]),
        HistoricalResult(sessionName: "2023/11/03 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 111.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: 67.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 46.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 20.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -5.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -10.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -21.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: -38.00),
            Result.Player(name: "Wenna", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -120.00)
        ]),
        HistoricalResult(sessionName: "2023/11/04 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Hanna", buyinDollarAmount: 50.00, profitDollarAmount: 126.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: 93.00),
            Result.Player(name: "Cyy", buyinDollarAmount: 50.00, profitDollarAmount: 82.00),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: 3.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -7.00),
            Result.Player(name: "Austin", buyinDollarAmount: 50.00, profitDollarAmount: -20.00),
            Result.Player(name: "阵雨", buyinDollarAmount: 50.00, profitDollarAmount: -28.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -250.00)
        ]),
        HistoricalResult(sessionName: "2023/11/06 19:00 0.5/0.5 MAX8", playerResults: [
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 144.50),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: 140.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 18.50),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: 7.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Hanna", buyinDollarAmount: 50.00, profitDollarAmount: -60.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -200.00)
        ]),
        HistoricalResult(sessionName: "2023/11/07 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 148.00),
            Result.Player(name: "L", buyinDollarAmount: 50.00, profitDollarAmount: 145.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 90.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: 58.00),
            Result.Player(name: "Amanda", buyinDollarAmount: 50.00, profitDollarAmount: -9.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -35.00),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -43.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -109.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -244.00)
        ]),
        HistoricalResult(sessionName: "2023/11/09 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 142.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 105.50),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 25.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 21.00),
            Result.Player(name: "Bao", buyinDollarAmount: 50.00, profitDollarAmount: 13.00),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: -8.50),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -33.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -118.50),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -147.00)
        ]),
        HistoricalResult(sessionName: "2023/11/10 19:00 0.5/0.5 MAX8", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 84.50),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: 61.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: 39.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 17.50),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -38.50),
            Result.Player(name: "Christine", buyinDollarAmount: 50.00, profitDollarAmount: -58.50),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
        ]),
        HistoricalResult(sessionName: "2023/11/11 19:00 锦标赛 MAX15", playerResults: [
            Result.Player(name: "阵雨", buyinDollarAmount: 50.00, profitDollarAmount: 205.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 185.00),
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: 180.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 45.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -5.00),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: -14.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -23.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -37.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Christine", buyinDollarAmount: 50.00, profitDollarAmount: -55.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -55.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -55.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -101.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -110.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -110.00)
        ]),
        HistoricalResult(sessionName: "2023/11/11 19:00 0.5/0.5 MAX7", playerResults: [
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 155.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 96.50),
            Result.Player(name: "L", buyinDollarAmount: 50.00, profitDollarAmount: 28.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -30.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: -41.50),
            Result.Player(name: "千千", buyinDollarAmount: 50.00, profitDollarAmount: -79.50),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -129.00)
        ]),
        HistoricalResult(sessionName: "2023/11/12 19:00 0.5/0.5 MAX6", playerResults: [
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 193.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 171.50),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: 9.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -99.50),
            Result.Player(name: "Hanna", buyinDollarAmount: 50.00, profitDollarAmount: -130.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -144.00)
        ]),
        HistoricalResult(sessionName: "2023/11/16 19:00 0.5/0.5 MAX6", playerResults: [
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 119.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 119.50),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: 45.50),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -27.50),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -120.00),
            Result.Player(name: "Cyy", buyinDollarAmount: 50.00, profitDollarAmount: -137.00)
        ]),
        HistoricalResult(sessionName: "2023/11/17 19:00 0.5/0.5 MAX7", playerResults: [
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: 145.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 130.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 50.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 37.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 3.00),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: -65.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -300.00)
        ]),
        HistoricalResult(sessionName: "2023/11/18 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Raymond", buyinDollarAmount: 50.00, profitDollarAmount: 125.00),
            Result.Player(name: "Han", buyinDollarAmount: 50.00, profitDollarAmount: 122.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 65.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 39.00),
            Result.Player(name: "阵雨", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -28.50),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: -40.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Cyy", buyinDollarAmount: 50.00, profitDollarAmount: -82.50),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -150.00)
        ]),
        HistoricalResult(sessionName: "2023/11/18 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "L", buyinDollarAmount: 50.00, profitDollarAmount: 152.00),
            Result.Player(name: "夏源", buyinDollarAmount: 50.00, profitDollarAmount: 70.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 58.50),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 50.00),
            Result.Player(name: "朱人杰", buyinDollarAmount: 50.00, profitDollarAmount: 15.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -48.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "Amanda", buyinDollarAmount: 50.00, profitDollarAmount: -121.00),
            Result.Player(name: "小纪", buyinDollarAmount: 50.00, profitDollarAmount: -127.00)
        ]),
        HistoricalResult(sessionName: "2023/11/20 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Hanna", buyinDollarAmount: 50.00, profitDollarAmount: 125.50),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 106.50),
            Result.Player(name: "Wz", buyinDollarAmount: 50.00, profitDollarAmount: 35.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 20.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -2.00),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -59.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -84.50),
            Result.Player(name: "Cyy", buyinDollarAmount: 50.00, profitDollarAmount: -141.00)
        ]),
        HistoricalResult(sessionName: "2023/11/21 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 294.50),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 200.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 86.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 67.50),
            Result.Player(name: "Ac", buyinDollarAmount: 50.00, profitDollarAmount: -30.00),
            Result.Player(name: "JY", buyinDollarAmount: 50.00, profitDollarAmount: -35.50),
            Result.Player(name: "Rick", buyinDollarAmount: 50.00, profitDollarAmount: -56.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -64.50),
            Result.Player(name: "Cyy", buyinDollarAmount: 50.00, profitDollarAmount: -150.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -312.00)
        ]),
        HistoricalResult(sessionName: "2023/11/23 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 245.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 95.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: 67.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: 20.00),
            Result.Player(name: "千千", buyinDollarAmount: 50.00, profitDollarAmount: 9.50),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -25.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -41.50),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -170.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -200.00)
        ]),
        HistoricalResult(sessionName: "2023/11/25 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 160.00),
            Result.Player(name: "振邦", buyinDollarAmount: 50.00, profitDollarAmount: 97.50),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 67.50),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 64.00),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -2.50),
            Result.Player(name: "恰空", buyinDollarAmount: 50.00, profitDollarAmount: -38.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -142.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -198.00)
        ]),
        HistoricalResult(sessionName: "2023/11/26 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Tong", buyinDollarAmount: 50.00, profitDollarAmount: 135.50),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 115.00),
            Result.Player(name: "阵雨", buyinDollarAmount: 50.00, profitDollarAmount: 67.00),
            Result.Player(name: "Shawn", buyinDollarAmount: 50.00, profitDollarAmount: 48.50),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -25.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -42.00),
            Result.Player(name: "Bill", buyinDollarAmount: 50.00, profitDollarAmount: -99.00),
            Result.Player(name: "Lei", buyinDollarAmount: 50.00, profitDollarAmount: -100.00),
            Result.Player(name: "振邦", buyinDollarAmount: 50.00, profitDollarAmount: -100.00)
        ]),
        HistoricalResult(sessionName: "2023/11/28 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 245.50),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 175.50),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: 163.00),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 25.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -50.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -56.50),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -89.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -140.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -270.00)
        ]),
        HistoricalResult(sessionName: "2023/11/29 19:00 0.5/0.5 MAX9", playerResults: [
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 105.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 50.00),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: 50.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 26.50),
            Result.Player(name: "Lw", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: -21.50),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -40.00),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: -83.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -87.50)
        ]),
        HistoricalResult(sessionName: "2023/11/30 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 291.50),
            Result.Player(name: "L", buyinDollarAmount: 50.00, profitDollarAmount: 212.00),
            Result.Player(name: "夏源", buyinDollarAmount: 50.00, profitDollarAmount: 113.50),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 13.50),
            Result.Player(name: "小纪", buyinDollarAmount: 50.00, profitDollarAmount: 0.00),
            Result.Player(name: "Amanda", buyinDollarAmount: 50.00, profitDollarAmount: -13.50),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -65.00),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: -150.50),
            Result.Player(name: "千千", buyinDollarAmount: 50.00, profitDollarAmount: -183.50),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: -217.50)
        ]),
        HistoricalResult(sessionName: "2023/12/01 19:00 0.5/0.5 MAX10", playerResults: [
            Result.Player(name: "少桐", buyinDollarAmount: 50.00, profitDollarAmount: 211.00),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 108.50),
            Result.Player(name: "王皓", buyinDollarAmount: 50.00, profitDollarAmount: 70.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 62.50),
            Result.Player(name: "叮叮", buyinDollarAmount: 50.00, profitDollarAmount: 55.50),
            Result.Player(name: "Henry", buyinDollarAmount: 50.00, profitDollarAmount: -29.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -85.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -113.50),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: -130.00),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -150.00)
        ]),
        HistoricalResult(sessionName: "2023/12/02 15:00 0.5/0.5 MAX8", playerResults: [
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: 170.00),
            Result.Player(name: "Hanna", buyinDollarAmount: 50.00, profitDollarAmount: 162.00),
            Result.Player(name: "浩文", buyinDollarAmount: 50.00, profitDollarAmount: 116.00),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: 106.50),
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: -53.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -70.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -193.50),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -237.50)
        ]),
        HistoricalResult(sessionName: "2023/12/02 22:00 0.1/0.2 MAX7", playerResults: [
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: 150.00),
            Result.Player(name: "千千", buyinDollarAmount: 50.00, profitDollarAmount: 69.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: 68.00),
            Result.Player(name: "L", buyinDollarAmount: 50.00, profitDollarAmount: 35.50),
            Result.Player(name: "Mika", buyinDollarAmount: 50.00, profitDollarAmount: 3.00),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: -120.00),
            Result.Player(name: "Weiran", buyinDollarAmount: 50.00, profitDollarAmount: -210.00)
        ]),
        HistoricalResult(sessionName: "2023/12/03 19:00 0.5/1 MAX6", playerResults: [
            Result.Player(name: "Yunong", buyinDollarAmount: 50.00, profitDollarAmount: 235.50),
            Result.Player(name: "邵楠", buyinDollarAmount: 50.00, profitDollarAmount: 139.50),
            Result.Player(name: "涵羽", buyinDollarAmount: 50.00, profitDollarAmount: 42.00),
            Result.Player(name: "超伦", buyinDollarAmount: 50.00, profitDollarAmount: -27.50),
            Result.Player(name: "Colin", buyinDollarAmount: 50.00, profitDollarAmount: -150.00),
            Result.Player(name: "Feiou", buyinDollarAmount: 50.00, profitDollarAmount: -240.00)
        ])
    ]
}
