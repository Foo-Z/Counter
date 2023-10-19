//
//  MainView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/7/23.
//

import SwiftUI

struct MainView: View {
    enum Tab {
        case home, session, vpip, historical
    }
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            CounterView()
                .tabItem {
                    Label("", systemImage: "person.2")
                }
                .tag(Tab.home)
            
            VpipView()
                .tabItem {
                    Label("", systemImage: "chart.bar.xaxis")
                }
                .tag(Tab.vpip)
            
            HistoricalResultView()
                .tabItem {
                    Label("",  systemImage: "book.pages")
                }
                .tag(Tab.historical)
        }
    }
}

#Preview {
    MainView()
}
