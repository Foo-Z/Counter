//
//  SettingView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI

struct SettingView: View {
    @ObservedObject var viewModel: CounterViewModel
    @State private var defaultBuyIn: Int = 200
    var body: some View {
        Text("Settings")
            .font(.title)
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text("Buy In chips")
                Spacer()
                TextField("", value: $defaultBuyIn, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 100)
                Button("OK") {
                    viewModel.changeIncrement(increment: defaultBuyIn)
                }
            }
            .padding(10)
            HStack {
                Text("Dollar amount per Chip")
                Spacer()
                TextField("", value: $defaultBuyIn, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 100)
                Button("OK") {
                    viewModel.changeIncrement(increment: defaultBuyIn)
                }
            }
            .padding(10)
        }
        Text("Current Default buy in chips are : \(viewModel.getIncrement())")
        Spacer()
        
    }
}

#Preview {
    SettingView(viewModel: CounterViewModel())
}
