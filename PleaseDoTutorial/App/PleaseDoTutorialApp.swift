//
//  PleaseDoTutorialApp.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 4/5/2568 BE.
//

import SwiftUI
import FirebaseCore

@main
struct PleaseDoTutorialApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
