//
//  FructusApp.swift
//  Fructus
//
//  Created by Personal on 16/8/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                Onboarding()
            } else {
                ContentView()
            }
        }
    }
}
