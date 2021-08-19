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
    
    var color8 = hexStringToUIColor(hex: "#F238D3")
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
                    .shadow(color: .pink, radius: 20)
                
                    
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
                                .font(Font.custom("pixel", size: 25))
                                .foregroundColor(.white)

                        Text(location)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding()
                        }
                       
                
                   
                    }
                    
                    Divider().background(Color.white)
                    
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Sellprice")
                            .RockSalt(style: .body, weight: .regular)
                            .foregroundColor(.white)
                        
                        Text("50, 100")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Used")
                            .RockSalt(style: .body, weight: .regular)
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)
                        
                    Text(used)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
    

    #if DEBUG
    struct ArtefactsDetailView_Previews : PreviewProvider {
        static var previews: some View {
            ArtefactsDetailView(image: "Dwarf_Scroll_I", name: "Dwarf Scroll I",  info: "A yellowed scroll of parchment filled with dwarven script. This one's tied with a red bow.", location: "Tilling in Mines/Skull Cavern (any floor) (0.16%), Several monsters (0.5% each)",  sellprice: [1], used: "Fish Pond (Quest)")
        }
    }
    #endif


}

