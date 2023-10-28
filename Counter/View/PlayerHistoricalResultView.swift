//
//  PlayerHistoricalResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/28/23.
//

import SwiftUI

struct PlayerHistoricalResultView: View {
    var playerName: String
    var results: [Result]
    var body: some View {
        NavigationStack {
            Text("Historical Results for \(playerName)")
                .font(.title2)
                .padding(10)
            VStack {
                List {
                    ForEach(results) { result in
                        NavigationLink("\(result.name)") {
                            ResultView(resultId: result.name)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PlayerHistoricalResultView(playerName: "Feiou", results: [])
}
