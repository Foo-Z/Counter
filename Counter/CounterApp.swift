//
//  CounterApp.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI

@main
struct CounterApp: App {
    var body: some Scene {
        WindowGroup {
            StartView(viewModel: CounterViewModel())
//            CounterView(viewModel: CounterViewModel())
        }
    }
}
