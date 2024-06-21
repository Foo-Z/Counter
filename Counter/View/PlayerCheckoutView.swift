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
    @FocusState var isOnFocused: Bool
    
    var body: some View {
        HStack {
            VStack {
                Text("\(currentPlayer.name) bought: \(currentPlayer.buyIn)")
                    .font(.system(size: 15))
                Text(" ")
                    .font(.system(size: 11))
            }
            Spacer()
            VStack {
                Text(" ")
                Text("stack: \(currentPlayer.cashOut)")
                    .font(.system(size: 11))
                    .frame(alignment: .bottom)
            }
            TextField("cashout", value: $cashout, format: .number)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 80)
                .focused($isOnFocused)
                .onChange(of: !isOnFocused, updateCheckout)
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
    func getCheckoutChips() -> Int {
        return currentPlayer.cashOut;
    }
    func updateCheckout() {
        currentPlayer.cashOut = cashout ?? 0
        try? context.save()
    }
}
#Preview {
    PlayerCheckoutView(currentPlayer: Player(name: "test", buyIn: 500, seatNumber: 1))
}
