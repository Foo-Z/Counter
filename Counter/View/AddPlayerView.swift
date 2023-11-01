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
    @Query private var playerRecords: [PlayerRecord]
    @Query private var players: [Player]
    @State private var name = ""
    var playerSeatNumber: Int
    @State private var buyIn: Int = 500
    @State var showingAlert: Bool =  false
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
                            showingAlert = !addNewPlayer()
                            if !showingAlert {
                                dismiss()
                            }
                            
                        }
                        .buttonStyle(BorderedProminentButtonStyle())
                        .alert(isPresented: $showingAlert) {
                            Alert(
                                title: Text("Invalid player name"),
                                message: Text("Please give a unique name for the player"),
                                dismissButton: .default(Text("OK"))
                            )
                        }
                    }
                }
                .padding(10)
            }
        }
    }
    
    func addNewPlayer() -> Bool {
        if name.isEmpty {
            return false
        }
        let checkPlayerRecord = try! playerRecords.filter(#Predicate { $0.name == name})
        if checkPlayerRecord.isEmpty {
            context.insert(PlayerRecord(name: name))
        } 
        let checkPlayer = try! players.filter(#Predicate { $0.name == name})
        if checkPlayer.isEmpty {
            context.insert(Player(name: name, buyIn: buyIn, seatNumber: playerSeatNumber))
        } else {
            name = ""
            return false
        }
        name = ""
        return true
    }
}

#Preview {
    AddPlayerView(playerSeatNumber: 1)
}
