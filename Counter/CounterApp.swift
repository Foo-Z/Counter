//
//  CounterApp.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData

@main
struct CounterApp: App {
//    let modelContainer: ModelContainer = {
//        let schema = Schema([Player.self, Setting.self])
//        let container = try! ModelContainer(for: schema, configurations: [])
//        return container
//    }()
    let modelContainer: ModelContainer

    init() {
        do {
            modelContainer = try ModelContainer(for: Player.self, Setting.self)
        } catch {
            fatalError("Could not initialize ModelContainer")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            StartView()
//            CounterView(viewModel: CounterViewModel())
        }
        .modelContainer(modelContainer)
    }
}
