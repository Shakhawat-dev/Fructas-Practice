//
//  Fructas_PracticeApp.swift
//  Shared
//
//  Created by Shakhawat Hossain Shahin on 7/6/21.
//

import SwiftUI

@main
struct Fructas_PracticeApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
