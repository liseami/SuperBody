//
//  SuperBodyApp.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

import SwiftUI

@main
struct SuperBodyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
