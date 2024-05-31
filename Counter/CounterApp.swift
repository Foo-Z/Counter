//
//  CounterApp.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct CounterApp: App {
    let modelContainer: ModelContainer
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        do {
            modelContainer = try ModelContainer(for: Player.self, Setting.self, Result.self, PlayerRecord.self)
        } catch {
            fatalError("Could not initialize ModelContainer")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(modelContainer)
    }
}
