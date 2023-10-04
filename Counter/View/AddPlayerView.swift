//
//  AddPlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/3/23.
//

import SwiftUI

struct AddPlayerView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @State private var name = ""
    var body: some View {
        Text("Add New Player").font(.title)
        Spacer()
        TextField("", text: $name)
            .textFieldStyle(.roundedBorder)
            .frame(width: 200, height: 50)
        HStack (alignment:.center, spacing: 10) {
            Button("Cancel") {
                dismiss()
            }
            Spacer()
            Button("Ok") {
                addNewPlayer()
                dismiss()
            }
        }
        .padding(100)
        Spacer()
    }
    func addNewPlayer() {
        if !name.isEmpty {
            context.insert(Player(name: name))
        }
        name = ""
    }
}

#Preview {
    AddPlayerView()
}
