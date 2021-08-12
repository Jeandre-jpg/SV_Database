//
//  ArtefactsDetailView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//
import SwiftUI

import SwiftUI

struct ArtefactsDetailView: View {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var location: String
    var sellprice: [Int]
    var used: String
    
    var color8 = hexStringToUIColor(hex: "#F25C05")
        
        var body: some View {
       
            ZStack{
                Color(color8)
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
            
                }
                
                Divider().background(Color.white)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Sell Price")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)

                    Text("50, 100")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
                    
                    VStack(alignment: .leading, spacing: 10){
                            Text("Used")
                                .font(Font.custom("pixel", size: 25))
                                .foregroundColor(.white)
                            
                        Text(used)
                            .font(.subheadline)
                            .foregroundColor(.white)
                }
                
              
                
            
                
               
                
               
                }
                Divider().background(Color.white)
               
                }.padding().navigationBarTitle(Text(name), displayMode: .inline)
        }
    }
}


    #if DEBUG
    struct ArtefactsDetailView_Previews : PreviewProvider {
        static var previews: some View {
            ArtefactsDetailView(image: "Dwarf_Scroll_I", name: "Dwarf Scroll I",  info: "A yellowed scroll of parchment filled with dwarven script. This one's tied with a red bow.", location: "Tilling in Mines/Skull Cavern (any floor) (0.16%), Several monsters (0.5% each)",  sellprice: [1], used: "Fish Pond (Quest)")
        }
    }
    #endif




