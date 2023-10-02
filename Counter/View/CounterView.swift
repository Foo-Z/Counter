//
//  CounterView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI

struct CounterView: View {
    @ObservedObject var viewModel: CounterViewModel
    @State var showingAlert: Bool = false
    @State var showingSettings: Bool =  false
    @State private var name = ""
    var body: some View {
        HStack {
            //NavigationView {
//                NavigationLink(
//                    destination: SettingView(viewModel: viewModel),
//                    label: {
//                        Text("Settings")
//                            .font(.subheadline)
//                    }
//                )
            //}
            Button("Settings") {
                showingSettings = true
            }
            .sheet(isPresented: $showingSettings, content: {
                SettingView(viewModel: viewModel)
            })
            Spacer()
            Button("add new player") {
                showingAlert = true
            }
            .alert("Enter your name", isPresented: $showingAlert) {
                TextField("New Player", text: $name)
                Button("Ok", action: addNewPlayer)
            }
        }
        ScrollView {
            VStack() {
                ForEach(viewModel.players) { player in
                    PlayerView(viewModel: viewModel, currentPlayer: player)
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden()
        Text("Total chips are \(viewModel.getTotalChips())")
        
    }
    func addNewPlayer() {
        viewModel.addNewPlayer(name: name)
        name = ""
    }
}

#Preview {
    CounterView(
        viewModel: CounterViewModel()
    )
}
