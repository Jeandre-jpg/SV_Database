//
//  SkipButtonView.swift
//  
//
//  Created by Jeandré De Villiers on 2021/07/28.
//
import SwiftUI

struct SkipButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(action: {
            print("Exit Onboarding")
            isOnboarding = false
            
        }, label: {
            HStack(spacing: 20){
                Text("Skip")
               
            }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    .background(Capsule().strokeBorder(Color.black, lineWidth: 1.35))
                    .accentColor(.black)
        })
    }
}

struct SkipButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SkipButtonView()
            .previewLayout(.sizeThatFits)
    }
}
