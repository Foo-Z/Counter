//
//  SettingView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData

struct SettingView: View {
    @State private var defaultBuyIn: Int = 200
    @State private var defaultChipValue: Float = 0.1
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @Query private var settings: [Setting]
    
    var body: some View {
        Text("Settings")
            .font(.title)
        VStack(alignment: .leading, spacing: 5) {
            List {
                ForEach(settings) {setting in
                    VStack {
                        HStack {
                            Text("Buy In chips")
                            Spacer()
                            TextField("", value: $defaultBuyIn, format: .number)
                                .keyboardType(.numberPad)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 100)
                            Button("OK") {
                                setting.increment = defaultBuyIn
                                defaultBuyIn = setting.increment
                                try? context.save()
                                dismiss()
                            }
                        }
                        HStack {
                            Text("Chip value")
                            Spacer()
                            TextField("", value: $defaultChipValue, format: .number)
                                .keyboardType(.numberPad)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 100)
                            Button("OK") {
                                setting.valuePerChip = defaultChipValue
                                defaultChipValue = setting.valuePerChip
                                try? context.save()
                                dismiss()
                            }
                        }
                    }
                    .padding(10)
                }.onDelete(perform: { indexSet in
                    for index in indexSet {
                        removeSettings(settings[index])
                    }
                })
            }
        }
        VStack(spacing: 10) {
            Text("Current Default buy in chips are : \(getIncrement())")
            Text("Current Default value per chip is : $ \(getChipValue())")
        }
        Spacer()
        
    }
    func removeSettings(_ setting: Setting) {
        context.delete(setting)
    }
    func getIncrement() -> Int {
        settings.first?.increment ?? 200
    }
    func getChipValue() -> String {
        String(format: "%.2f", settings.first?.valuePerChip ?? 0.1)
    }
}


#Preview {
    SettingView()
}
