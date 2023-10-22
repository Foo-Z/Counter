//
//  SelectPlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/20/23.
//

import SwiftUI

struct SelectPlayerView: View {
    @Binding var selectedPlayers: Set<String>
    let items: [String] = ["Feiou", "Lw", "Rick", "涵羽", "浩文","Colin","J","超伦","Yunong","Weiran","Mika","王皓","Lei","AC","昊天","少桐"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                Button(action: {
                    if self.selectedPlayers.contains(item) {
                        self.selectedPlayers.remove(item)
                    } else {
                        self.selectedPlayers.insert(item)
                    }
                }) {
                    EmptyView()
                }
                .listRowBackground(self.selectedPlayers.contains(item) ? Color.blue : Color.clear)
                .overlay(MultipleSelectionRow(
                    item: item,
                    isSelected: self.selectedPlayers.contains(item)
                ))
            }
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
//            if isSelected {
//                Image(systemName: "checkmark.circle")
//                    .foregroundColor(.blue)
//            }
        }
    }
}

#Preview {
    let selectedItems: Binding<Set<String>> = .constant(Set(["Item 1", "Item 3"]))
    return SelectPlayerView(selectedPlayers: selectedItems)
}
