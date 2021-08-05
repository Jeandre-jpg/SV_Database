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
           
//            Image(systemName: image)
//                .renderingMode(.original)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               
            
            Text(title)
                .foregroundColor(.orange)
                .font(Font.custom("pixel", size: 33))
                .multilineTextAlignment(.center)
                .frame(maxWidth: 480)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                .padding()
            
            
            Text(description)
                .foregroundColor(.black)
                .font(Font.custom("dogica", size: 20))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                .frame(maxWidth: 480)
                .padding()
            
            
            HStack(spacing: 20) {
                
              
                
              
                
                ButtonView()
                    .padding(.vertical, 20)
                
               
        
    }  .padding()
            
            
            
           
             
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color(color2))
        .edgesIgnoringSafeArea(.all)
       
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(image: "stardew_valley_logo", title: "Breathe new life into the Valley", description: "The official unofficial Stardew Valley Databas.e")
    }
}


    struct LogoImage : View {
        
        var body: some View {
            Image("stardew_valley_logo")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fit)
                
        }
    }

