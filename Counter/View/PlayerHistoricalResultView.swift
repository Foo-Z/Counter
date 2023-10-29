//
//  PlayerHistoricalResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/28/23.
//

import SwiftUI

struct PlayerHistoricalResultView: View {
    var playerName: String
    var resultNames: [String]
    var body: some View {
        NavigationStack {
            Text("Historical Results for \(playerName)")
                .font(.title2)
                .padding(10)
            VStack {
                List {
                    ForEach(resultNames, id: \.self) { resultName in
                        NavigationLink("\(resultName)") {
                            ResultView(resultId: resultName)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PlayerHistoricalResultView(playerName: "Feiou", resultNames: [])
}
