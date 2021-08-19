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
    
    var color1 = hexStringToUIColor(hex: "#F20505")
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
                    Color(color1)
                        .ignoresSafeArea())
                .cornerRadius(150)
                .foregroundColor(.white)
                .shadow(color: .red, radius: 20)
            
                
            Text(name)
                .font(Font.custom("pixel", size: 30))
                .foregroundColor(.white)
            
            Text(info)
                .font(.subheadline)
                .foregroundColor(.white)
                .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
            
            VStack {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 90){
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
                    Text("Sell Price")
                        .RockSalt(style: .body, weight: .regular)
                        .font(Font.custom("pixel", size: 25))
                        .foregroundColor(.white)
                        .frame(width: 120, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                Text("50, 100")
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

                Text("50, 100")
                    .font(.subheadline)
                    .foregroundColor(.white)
                }
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
            }
                
                Divider().background(Color.white)
                
            
                    VStack(alignment: .leading, spacing: 10){
                        Text("Recipes")
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                          
                        
                    Text(recipes)
                        .font(.subheadline)
                        .foregroundColor(.white)
                
            }.offset(x: -80)
         
           
            
       }.padding().navigationBarTitle(Text(name), displayMode: .inline)
                .padding()
                .frame(width: 350, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(colourBackground), Color(color1)]), startPoint: .top, endPoint: .bottom)
                    )
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)
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






}
