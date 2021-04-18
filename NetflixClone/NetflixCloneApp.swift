//
//  NetflixCloneApp.swift
//  NetflixClone
//
//  Created by Ronald Fornis Paglinawan on 12/03/21.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct NetflixCloneApp: App {
    
    init() {
        AppCenter.start(withAppSecret: "5ec63157-57d7-4179-959a-f5e87cb53e41", services:[
          Analytics.self,
          Crashes.self
        ])
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
