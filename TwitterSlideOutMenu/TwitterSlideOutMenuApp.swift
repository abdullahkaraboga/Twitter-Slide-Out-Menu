//
//  TwitterSlideOutMenuApp.swift
//  TwitterSlideOutMenu
//
//  Created by Abdullah Karaboğa on 28.01.2023.
//

import SwiftUI

@main
struct TwitterSlideOutMenuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
