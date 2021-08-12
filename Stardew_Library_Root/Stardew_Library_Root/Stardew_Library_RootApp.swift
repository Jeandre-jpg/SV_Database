//
//  Stardew_Library_RootApp.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI

@main
struct Stardew_Library_RootApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            }else{
            ContentView()

        
        }
        
    }
}
}

