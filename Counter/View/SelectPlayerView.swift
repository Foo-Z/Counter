//
//  SelectPlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/20/23.
//

import SwiftUI
import SwiftData

struct SelectPlayerView: View {
    @Environment(\.modelContext) private var context
    @Binding var selectedPlayers: Set<String>
    @Query private var playerRecords: [PlayerRecord]
    
    var body: some View {
        List {
            ForEach(playerRecords) { item in
                Button(action: {
                    if self.selectedPlayers.contains(item.name) {
                        self.selectedPlayers.remove(item.name)
                    } else {
                        self.selectedPlayers.insert(item.name)
                    }
                }) {
                    EmptyView()
                }
                .listRowBackground(self.selectedPlayers.contains(item.name) ? Color.blue : Color.clear)
                .overlay(MultipleSelectionRow(
                    item: item.name,
                    isSelected: self.selectedPlayers.contains(item.name)
                ))
            }
            .onDelete(perform: { indexSet in
                for index in indexSet {
                    context.delete(playerRecords[index])
                }
            })
        }
    }
}

struct MultipleSelectionRow: View {
    let item: String
    let isSelected: Bool
    
    var body: some View {
        HStack {
            Text(item)
                .foregroundColor(.white)
            Spacer()
        }
    }
}

#Preview {
    let selectedItems: Binding<Set<String>> = .constant(Set(["Item 1", "Item 3"]))
    return SelectPlayerView(selectedPlayers: selectedItems)
}
