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
    
    var color1 = hexStringToUIColor(hex: "#EEE8E8")
        
        var body: some View {
       
            ZStack{
                Color(color1)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
             
                Image(image)
                    .renderingMode(.original).resizable().scaledToFit().frame(width: 150, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 20)
                    
                Text(name)
                    .font(Font.custom("pixel", size: 33))
                    .padding()
                Text(info)
                    .font(.subheadline)
                Divider()
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Source")
                            .font(Font.custom("pixel", size: 25))
                        
                    Text(source)
                        .font(.subheadline)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Season")
                            .font(Font.custom("pixel", size: 25))
                        
                    Text(season)
                        .font(.subheadline)
                    }
                }
                
                Divider()
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Health")
                            .font(Font.custom("pixel", size: 25))

                    Text("13, 5")
                        .font(.subheadline)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Sell Price")
                            .font(Font.custom("pixel", size: 25))

                    Text("50, 100")
                        .font(.subheadline)
                    }
                }
                
                Divider()
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Bundles")
                            .font(Font.custom("pixel", size: 25))
                        
                    Text(bundles)
                        .font(.subheadline)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Recipes")
                            .font(Font.custom("pixel", size: 25))
                        
                    Text(recipes)
                        .font(.subheadline)
                    }
                  
            
                }
                
              
                
                VStack(alignment: .leading, spacing: 10){
                        Text("Crafting")
                            .font(Font.custom("pixel", size: 25))
                        
                    Text(crafting)
                        .font(.subheadline)
                
               
                }
                
                }.padding().navigationBarTitle(Text(name), displayMode: .inline)
            
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






