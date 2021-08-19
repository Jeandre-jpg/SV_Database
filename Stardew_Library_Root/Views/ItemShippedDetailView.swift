//
//  ItemShippedDetailView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/05.
//

import SwiftUI

struct ItemShippedDetailView: View {
    var image: String
    var name: String
    var info: String
    var source: String
    var season: String
    var health: [Int]
    var sellprice: [Int]
    var bundles: String
    var recipes: String
    var crafting: String
    
    var color1 = hexStringToUIColor(hex: "#3805F2")
    var colourBackground = hexStringToUIColor(hex: "#151626")

    var body: some View {
   
        ZStack{
            Color(colourBackground)
        .edgesIgnoringSafeArea(.all)
        
            VStack(spacing:-10) {

            Image(image)
                .renderingMode(.original).resizable().scaledToFit().frame(width: 150, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(
                    Color(color1)
                        .ignoresSafeArea())
                .cornerRadius(150)
                .foregroundColor(.white)
                .shadow(color: .purple, radius: 20)
            
                
            Text(name)
                .font(Font.custom("pixel", size: 30))
                .foregroundColor(.white)
                .padding()
            
            Text(info)
                .font(.subheadline)
                .foregroundColor(.white)
                .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
            
            VStack {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                VStack(alignment: .leading, spacing: 10){
                    Text("Source")
                        .RockSalt(style: .body, weight: .regular)
                        .foregroundColor(.white)
                    
                Text(source)
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
                    Text("Recipes")
                        .RockSalt(style: .body, weight: .regular)
                        .font(Font.custom("pixel", size: 25))
                        .foregroundColor(.white)
                        .frame(width: 110, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                Text(recipes)
                    .font(.subheadline)
                    .foregroundColor(.white)
                }
              
        
            }
            
           Divider().background(Color.gray)
                VStack(alignment: .leading, spacing: 10){
                    Text("Crafting")
                        
                        .RockSalt(style: .body, weight: .regular)
                        .font(Font.custom("pixel", size: 25))
                        .foregroundColor(.white)
                    
                Text(crafting)
                    .font(.subheadline)
                    .foregroundColor(.white)
            
                
            
          }.offset(x: -95)
           
           
            }.padding().navigationBarTitle(Text(name), displayMode: .inline)
            .padding()
            .frame(width: 350, height: 450, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(colourBackground), Color(color1)]), startPoint: .top, endPoint: .bottom)
                )
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .cornerRadius(30)
       }
    }
}
}


    #if DEBUG
    struct ItemShippedDetailView_Previews : PreviewProvider {
        static var previews: some View {
            ItemShippedDetailView(image: "Wild_Horseradish", name: "Wild Horseradish", info: "A spicy root found in the spring.", source: "Foraging, Spring Seeds", season: "Spring", health: [13, 5], sellprice: [50, 100], bundles: "Spring Foraging Bundle", recipes: "Shrimp Cocktail", crafting: "Wild Seeds")
        }
    }
    #endif






