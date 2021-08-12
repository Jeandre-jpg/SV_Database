//
//  CookingDetailView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//
import SwiftUI

struct CookingDetailView: View {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var source: String
    var health: [Int]
    var sellprice: [Int]
    var bundles: String
    var ingredients: String
    var recipes: String
    
  
        
        var body: some View {
       
            ZStack{
                Color(colour10)
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
                        Text("Source")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(source)
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
                        Text("Health")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)

                    Text("50, 100")
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
                        Text("Ingredients")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(ingredients)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
            
                }
                
                Divider().background(Color.white)
                
              
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Recipes")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(recipes)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                  
            
                }
              
               
                }.padding().navigationBarTitle(Text(name), displayMode: .inline)
//            }
        }
    }
}


    #if DEBUG
    struct CookingDetailView_Previews : PreviewProvider {
        static var previews: some View {
            CookingDetailView(image: "Fried_Egg", name: "Fried Egg",  info: "Sunny-side up.", source: "Upgraded farmhouse", health: [50, 22], sellprice: [35], bundles: "Chef's Bundle", ingredients: "Egg", recipes: "Complete Breakfast")
        }
    }
    #endif






