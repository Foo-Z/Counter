//
//  MainView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/7/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("", systemImage: "house")
                }
            CounterView()
                .tabItem {
                    Label("", systemImage: "person.2")
                }
            VpipView()
                .tabItem {
                    Label("", systemImage: "heart")
                }
        }
    }
}

#Preview {
    MainView()
}
