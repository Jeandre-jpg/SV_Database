//
//  OnboardingCardView.swift
//  
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI
var color2 = hexStringToUIColor(hex: "#6DF2E5")
struct OnboardingCardView: View {
    
    var image: String
    var title: String
    var description: String
    
    
    var body: some View {
      
        VStack(alignment: .center){
            
            
            LogoImage()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
               
            
            Text(title)
                .foregroundColor(.orange)
                .RockSalt(style: .title2, weight: .bold)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 480)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                .padding()
            
            
            Text(description)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                .padding()
              
            
            
        
                
                ButtonView()
                    .padding(.vertical, 20)
                  
            
           
             
        }.background(Image("background_purple")
                        .resizable()
                        .frame(width: 400, height: 850)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20))
    
       
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(image: "community", title: "Breathe new life into the Valley", description: "The official unofficial Stardew Valley Database").previewLayout(.fixed(width: 320, height: 640))
    }
}

struct LogoImage : View {
    
    var body: some View {
        Image("stardew_valley_logo")
            .resizable()
            .frame(width: 220, height: 250)
            .cornerRadius(30)
            .shadow(radius: 30)
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
}
