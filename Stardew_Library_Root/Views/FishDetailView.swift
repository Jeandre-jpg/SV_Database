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
    
    var color5 = hexStringToUIColor(hex: "#8806BF")
        
        var body: some View {
       
            ZStack{
                Color(color5)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
             
                Image(image)
                    .renderingMode(.original).resizable().scaledToFit().frame(width: 150, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 20)
                    
                Text(name)
                    .font(Font.custom("pixel", size: 33))
                    .padding()
                    .foregroundColor(.white)
                Text(info)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Location")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(location)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Season")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(season)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                }
                
                Divider().background(Color.white)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Health")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)

                    Text("13, 5")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Sell Price")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)

                    Text("50, 100")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                }
                
                Divider().background(Color.white)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Bundles")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(bundles)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Behaviour and Difficulty")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(behaviour)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                  
            
                }
                
               Divider().background(Color.white)
//                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                
                VStack(alignment: .leading, spacing: 10){
                        Text("Weather")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(weather)
                        .font(.subheadline)
                        .foregroundColor(.white)
                
               
                }
                
               
                }.padding().navigationBarTitle(Text(name), displayMode: .inline)
//            }
        }
    }
}


    #if DEBUG
    struct FishDetailView_Previews : PreviewProvider {
        static var previews: some View {
            FishDetailView(image: "Pufferfish_Icon", name: "Pufferfish",  info: "Inflates when threatened.", location: "Ocean, Ginger Island oceans", season: "Summer (All Seasons on Ginger Island)", time: "12pm – 4pm", sellprice: [200, 600], bundles: "Specialty Fish Bundle", behaviour: "80 floater", weather: "Sun")
        }
    }
    #endif






