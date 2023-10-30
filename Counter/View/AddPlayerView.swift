//
//  AddPlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/3/23.
//

import SwiftUI
import SwiftData

struct AddPlayerView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @State private var name = ""
    var playerSeatNumber: Int
    @State private var buyIn: Int = 500
    var body: some View {
        Text("Add New Player")
            .font(.title2)
            .padding(10)
        VStack(alignment: .leading, spacing: 5) {
            List {
                VStack {
                    HStack {
                        Text("Player name: ")
                        Spacer()
                        TextField("", text: $name)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 125)
                    }
                    HStack {
                        Text("Buy In chips: ")
                        Spacer()
                        TextField("", value: $buyIn, format: .number)
                            .keyboardType(.numberPad)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 125)
                    }
                    HStack (alignment:.center) {
                        Button("Cancel") {
                            dismiss()
                        }
                        Spacer()
                        Button("OK") {
                            addNewPlayer()
                            dismiss()
                        }
                        .buttonStyle(BorderedProminentButtonStyle())
                    }
                }
                .padding(10)
            }
        }
    }
    
    func addNewPlayer() {
        if !name.isEmpty {
            context.insert(Player(name: name, buyIn: buyIn, seatNumber: playerSeatNumber))
            context.insert(PlayerRecord(name: name))
        }
        name = ""
    }
}

#Preview {
    AddPlayerView(playerSeatNumber: 1)
}
