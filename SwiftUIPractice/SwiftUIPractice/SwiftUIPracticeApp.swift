//
//  SwiftUIPracticeApp.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 12/07/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftUIPracticeApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
