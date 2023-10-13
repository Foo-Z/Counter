//
//  AddPlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/3/23.
//

import SwiftUI

struct AddPlayerView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @State private var name = ""
    @State private var buyIn: Int = 500
    var body: some View {
        Text("Add New Player")
            .font(.title)
            .padding(10)
        Spacer()
        VStack(alignment: .leading, spacing: 5) {
            List {
                VStack {
                    
                    HStack {
                        Text("Player name: ")
                        Spacer()
                        TextField("", text: $name)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack {
                        Text("Buy In chips: ")
                        Spacer()
                        TextField("", value: $buyIn, format: .number)
                            .keyboardType(.numberPad)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 150)
                    }
                    HStack (alignment:.center, spacing: 10) {
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
                    .padding(80)
                }
            }
        }

        
    }
    func addNewPlayer() {
        if !name.isEmpty {
            context.insert(Player(name: name, buyIn: buyIn))
        }
        name = ""
    }
}

#Preview {
    AddPlayerView()
}
