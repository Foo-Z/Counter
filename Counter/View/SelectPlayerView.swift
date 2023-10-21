//
//  SelectPlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/20/23.
//

import SwiftUI

struct SelectPlayerView: View {
    @Binding var selectedPlayers: Set<String>
    let items: [String] = ["Feiou", "Lw", "Rick", "韩羽", "浩文","Colin","J","超伦","Yunong","Weiran","Mika"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                MultipleSelectionRow(
                    item: item,
                    isSelected: self.selectedPlayers.contains(item)
                )
                .onTapGesture {
                    if self.selectedPlayers.contains(item) {
                        self.selectedPlayers.remove(item)
                    } else {
                        self.selectedPlayers.insert(item)
                    }
                }
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
            Spacer()
            if isSelected {
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    let selectedItems: Binding<Set<String>> = .constant(Set(["Item 1", "Item 3"]))
    return SelectPlayerView(selectedPlayers: selectedItems)
}
