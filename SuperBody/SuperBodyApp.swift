//
//  SuperBodyApp.swift
//  SuperBody
//
//  Created by 赵翔宇 on 2022/2/4.
//

@_exported import SwiftUI
@_exported import FantasyUI

@main
struct SuperBodyApp: App {
    
    
    let persistenceController = PersistenceController.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    //监控场景阶段
    @Environment(\.scenePhase) var scenePhase
    //一个属性来存储持久化控制器
    let userDefaults = UserDefaults.standard
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
