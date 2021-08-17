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
            
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
               
            
            Text(title)
                .foregroundColor(.orange)
                .font(Font.custom("pixel", size: 33))
                .multilineTextAlignment(.center)
                .frame(maxWidth: 480)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                .padding()
            
            
            Text(description)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                .frame(maxWidth: 480)
               
                .padding()
            
            
            
            HStack(spacing: 20) {
                
              
                
              
                
                ButtonView()
                    .padding(.vertical, 20)
                
               
        
    }  .padding()
            
            
            
            
           
             
        }.background(Image("background_white")
                        .resizable()
                        .frame(width: 400, height: 850)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20))
    
       
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(image: "chicken", title: "Breathe new life into the Valley", description: "The official unofficial Stardew Valley Database").previewLayout(.fixed(width: 320, height: 640))
    }
}

