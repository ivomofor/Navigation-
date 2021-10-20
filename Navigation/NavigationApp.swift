//
//  NavigationApp.swift
//  Navigation
//
//  Created by macbook on 2021/10/07.
//

import SwiftUI

@main
struct NavigationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ViewRouter())
        }
    }
}
