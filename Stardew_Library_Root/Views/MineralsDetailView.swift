//
//  MineralsDetailView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct MineralsDetailView: View {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var sellprice: [Int]
    var location: String
    var used: String
    
    var color8 = hexStringToUIColor(hex: "#16F2B4")
    var colourBackground = hexStringToUIColor(hex: "#151626")

        
        var body: some View {
       
            ZStack{
                Color(colourBackground)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
             
                Image(image)
                    .renderingMode(.original).resizable().scaledToFit().frame(width: 150, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(
                        Color(color8)
                            .ignoresSafeArea())
                    .cornerRadius(150)
                    .foregroundColor(.white)
                    .shadow(color: .green, radius: 20)
                
                    
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
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Sell Price")
                            .RockSalt(style: .body, weight: .regular)
                            .foregroundColor(.white)
                          

                    Text("50, 100")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        
                    }
                }
                
                Divider().background(Color.white)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Used In")
                            .RockSalt(style: .body, weight: .regular)
                            .foregroundColor(.white)
                        

                    Text(used)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        
                    }
              
                }
            
              
               
                }.padding().navigationBarTitle(Text(name), displayMode: .inline)
            .padding()
            .frame(width: 350, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(colourBackground), Color(color8)]), startPoint: .top, endPoint: .bottom)
                )
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .cornerRadius(30)

        }
    }
}
}

    #if DEBUG
    struct MineralsDetailView_Previews : PreviewProvider {
        static var previews: some View {
            MineralsDetailView(image: "Quartz_Icon", name: "Quartz",  info: "A clear crystal commonly found in caves and mines.", sellprice: [25], location: "The Mines (Floors 1-120), Garbage Can, Stone Golem (10%)", used: " Geologist's Bundle, Refined Quartz, Fish Pond (Quest)")
        }
    }
    #endif






