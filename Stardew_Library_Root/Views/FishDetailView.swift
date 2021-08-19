//
//  FishDetailView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct FishDetailView: View {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var location: String
    var season: String
    var time: String
    var sellprice: [Int]
    var bundles: String
    var behaviour: String
    var weather: String
    
    var colourBackground = hexStringToUIColor(hex: "#151626")

        
        var body: some View {
       
            ZStack{
                Color(colourBackground)
            .edgesIgnoringSafeArea(.all)
            
                VStack(spacing:-1) {
    
                Image(image)
                    .renderingMode(.original).resizable().scaledToFit().frame(width: 150, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(
                        Color(color2)
                            .ignoresSafeArea())
                    .cornerRadius(150)
                    .foregroundColor(.white)
                    .shadow(color: .blue, radius: 20)
                
                    
                Text(name)
                    .font(Font.custom("pixel", size: 30))
                    .foregroundColor(.white)
                
                Text(info)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                
                VStack {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Location")
                            .RockSalt(style: .body, weight: .regular)
                            .foregroundColor(.white)
                        
                    Text(location)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Season")
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(season)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                
                Divider().background(Color.white)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Health")
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)

                    Text("13, 5")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Sell Price")
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)

                    Text("50, 100")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                }
                
                Divider().background(Color.white)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 90){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Bundles")
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(bundles)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    }
                    VStack(alignment: .leading, spacing: 30){
                        Text("Behaviour")
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                            .frame(width: 110, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    Text(behaviour)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                  
            
                }
                
               Divider().background(Color.gray)
                    VStack(alignment: .leading, spacing: 10){
                        Text("Weather")
                            
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(weather)
                        .font(.subheadline)
                        .foregroundColor(.white)
                
                    
                
              }.offset(x: -95)
               
               
                }.padding().navigationBarTitle(Text(name), displayMode: .inline)
                .padding()
                .frame(width: 350, height: 450, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(colourBackground), Color(color2)]), startPoint: .top, endPoint: .bottom)
                    )
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)
           }
        }
    }
}


    #if DEBUG
    struct FishDetailView_Previews : PreviewProvider {
        static var previews: some View {
            FishDetailView(image: "Pufferfish_Icon", name: "Pufferfish",  info: "Inflates when threatened.", location: "Ocean, Ginger Island oceans", season: "Summer", time: "12pm – 4pm", sellprice: [200, 600], bundles: "Specialty Fish Bundle", behaviour: "80 floater", weather: "Sun")
        }
    }
    #endif






