//
//  AehoparkApp.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI

@main
struct Aehopark: App {
    // Register AppDelegate
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
