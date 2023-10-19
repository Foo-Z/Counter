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
    @FocusState var isOnFocused: Bool
    
    var body: some View {
        HStack {
            Text("\(currentPlayer.name) bought: \(currentPlayer.buyIn)")
            Spacer()
            TextField("cashout", value: $cashout, format: .number)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 100)
                .focused($isOnFocused)
                .onChange(of: !isOnFocused, updateCheckout)
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
    
    func updateCheckout() {
        currentPlayer.cashOut = cashout ?? 0
        try? context.save()
    }
}
#Preview {
    PlayerCheckoutView(currentPlayer: Player(name: "test"))
}
