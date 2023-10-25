//
//  AddHistoricalResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/25/23.
//

import SwiftUI
import SwiftData

struct AddHistoricalResultView: View {
    @State private var sessionDate: String = Date.now.formatted()
    @State private var defaultGameLevel: String = "0.5/0.5"
    @State var showingSelector: Bool =  false
    @State private var selectedPlayers: Set<String> = []
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            List {
                VStack {
                    Button("Select Players") {
                        showingSelector = true
                    }.padding(10)
                        .sheet(isPresented: $showingSelector, content: {
                            SelectPlayerView(selectedPlayers: $selectedPlayers)
                        })
                        .buttonStyle(BorderedProminentButtonStyle())
                    ForEach(Array(selectedPlayers), id: \.self) { player in
                        if let index = Array(selectedPlayers).firstIndex(of: player) {
                            RowView(index: index, playerName: player)
                        }
                    }
                    HStack {
                        Text("Session Date: ")
                        Spacer()
                        TextField("", text: $sessionDate)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Game Level: ")
                        Spacer()
                        TextField("", text: $defaultGameLevel)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    Spacer()
                }
            }
        }
        .onTapGesture {
            self.hideKeyboard()
        }
        Spacer()
        
        Button("OK") {
            
        }
        .font(.title2)
        .buttonStyle(BorderedProminentButtonStyle())
    }
}

#Preview {
    AddHistoricalResultView()
}
