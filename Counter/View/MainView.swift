//
//  MainView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/7/23.
//

import SwiftUI

struct MainView: View {
    //@Binding var path: NavigationPath
    enum Tab {
      case home, session, vpip
    }
//    @State private var homepage = UUID()
//    @State private var sessionpage = UUID()
//    @State private var vpippage = UUID()
    @State private var selectedTab: Tab = .home
 //   @State private var tappedTwice = false
    var body: some View {
//        var handler: Binding<Tab> { Binding(
//            get: { self.selectedTab },
//            set: {
//                if $0 == self.selectedTab {
//                    tappedTwice = true
//                }
//                self.selectedTab = $0
//            }
//        )}
//        
//        return
        TabView(selection: $selectedTab) {
           // NavigationView {
                CounterView()
//                    .id(homepage)
//                    .onChange(of: tappedTwice, perform: { value in
//                        guard tappedTwice else { return }
//                        homepage = UUID()
//                        tappedTwice = false
//                    })
         //   }
            .tabItem {
                Label("", systemImage: "house")
            }
            .tag(Tab.home)
//            NavigationView {
//                CounterView()
//                    .id(sessionpage)
//                    .onChange(of: tappedTwice, perform: { value in
//                        guard tappedTwice else { return }
//                        sessionpage = UUID()
//                        tappedTwice = false
//                    })
//            }
//                .tabItem {
//                    Label("", systemImage: "person.2")
//                }
//                .tag(Tab.session)
          //  NavigationView {
                VpipView()
//                    .id(vpippage)
//                    .onChange(of: tappedTwice, perform: { value in
//                        guard tappedTwice else { return }
//                        vpippage = UUID()
//                        tappedTwice = false
//                    })
         //   }
                .tabItem {
                    Label("", systemImage: "heart")
                }
                .tag(Tab.vpip)
        }
    }
}
extension MainView {
    private func tabSelection() -> Binding<Tab> {
       Binding { //this is the get block
        self.selectedTab
       } set: { tappedTab in
        if tappedTab == self.selectedTab {
         //User tapped on the currently active tab icon => Pop to root/Scroll to top
        }
        //Set the tab to the tabbed tab
        self.selectedTab = tappedTab
       }
    }
}

#Preview {
    MainView()
}
