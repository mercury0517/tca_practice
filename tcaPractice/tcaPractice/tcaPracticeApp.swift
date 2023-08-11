//
//  tcaPracticeApp.swift
//  tcaPractice
//
//  Created by 伊原明宏 on 2023/08/11.
//

import ComposableArchitecture
import SwiftUI

@main
struct tcaPracticeApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            CounterView(store: tcaPracticeApp.store)
        }
    }
}
