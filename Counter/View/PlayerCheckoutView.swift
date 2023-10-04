//
//  PlayerCheckoutView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/3/23.
//

import SwiftUI
import SwiftData

struct PlayerCheckoutView: View {
    @Environment(\.modelContext) private var context
    var currentPlayer: Player
    @State private var cashout: Int?
    @State private var showingAlert = false
    
    var body: some View {
        HStack {
            Text("\(currentPlayer.name) bought: \(currentPlayer.buyIn)")
            Spacer()
            TextField("cashout", value: $cashout, format: .number)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 100)
//            Button("OK") {
//                currentPlayer.cashOut = cashout ?? 0
//                //currentPlayer.profit = currentPlayer.cashOut - currentPlayer.buyIn
//                try? context.save()
//                showingAlert = true
//            }
//            .alert("profit: \(currentPlayer.cashOut - currentPlayer.buyIn)", isPresented: $showingAlert){
//                Button("OK", role: .cancel) {}
//            }
        }
        
        .onTapGesture {
            currentPlayer.cashOut = cashout ?? 0
            //currentPlayer.profit = currentPlayer.cashOut - currentPlayer.buyIn
            try? context.save()
            self.hideKeyboard()
        }
    }
}
#Preview {
    PlayerCheckoutView(currentPlayer: Player(name: "test"))
}
