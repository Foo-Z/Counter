//
//  SettingView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData

struct SettingView: View {
    @State private var defaultBuyIn: Int = 500
    @State private var defaultChipValue: Float = 0.1
    @State private var defaultGameLevel: String = "0.5/0.5"
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @Query private var settings: [Setting]
    @Query private var players: [Player]
    @State private var showingAlert = false

    
    var body: some View {
        Text("Settings")
            .font(.title)
            .padding(10)
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
                            .buttonStyle(BorderedProminentButtonStyle())
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
                            .buttonStyle(BorderedProminentButtonStyle())
                        }
                        HStack {
                            Text("Game Level")
                            Spacer()
                            TextField("", text: $defaultGameLevel)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 100)
                            Button("OK") {
                                setting.gameLevel = defaultGameLevel
                                defaultGameLevel = setting.gameLevel
                                try? context.save()
                                dismiss()
                            }
                            .buttonStyle(BorderedProminentButtonStyle())
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
        Button("Reset session") {
            showingAlert = true
        }
        .buttonStyle(BorderedProminentButtonStyle())
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("This will remove all existing players."),
                message: Text("Are you sure?"),
                primaryButton: .destructive(Text("OK")) {
                    clearLastSession()
                    dismiss()
                },
                secondaryButton: .cancel()
            )
        }
        VStack(spacing: 10) {
            Text("Current Default buy in chips are : \(getIncrement())")
            Text("Current Default value per chip is : $ \(getChipValue())")
        }
        Spacer()
        
    }
    func clearLastSession() {
        for player in players {
            context.delete(player)
        }
        
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
