//
//  HomeView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/7/23.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var context
    @Query private var players: [Player]
    @State private var showingAlert = false
    @State private var navLinkActive = false
    
    var body: some View {
        NavigationStack {
            Text("1250 Poker Room")
                .font(.title)
                .padding(20)
            Spacer()
            VStack {
                
                NavigationLink(destination: StartView()) {
                    Text("Start a new session")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title2)
                .onAppear() {
                    clearLastSession()
                }
                
                NavigationLink(destination: CounterView()) {
                    Text("Current session")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title2)
                
                NavigationLink(destination: VpipView()) {
                    Text("VPIP")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title2)
                
                
                NavigationLink(destination: HistoricalResultView()) {
                    Text("History")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title2)
                
            }
            Spacer()
        }
    }
    
    func clearLastSession() {
        for player in players {
            context.delete(player)
        }
        
    }
}

#Preview {
    HomeView()
}
