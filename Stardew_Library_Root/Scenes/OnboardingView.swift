//
//  OnboardingView.swift
//  
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            OnboardingCardView(image: "stardew_valley_logo", title: "Breathe new life into the Valley", description: "The official unofficial Stardew Valley Database.")
            OnboardingCardView(image: "community", title: "Become part of the local Community", description: "View all of the wonderful cities temperature.")
            OnboardingCardView(image: "garden", title: "Turn your overgrown fkield into a lively farm!", description: "Click below to start.")
        }
        tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
            .padding(.horizontal, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
