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
    
    var color5 = hexStringToUIColor(hex: "#9BA8F2")
        
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
                        Text("Used In")
                            .font(Font.custom("pixel", size: 25))
                            .foregroundColor(.white)

                    Text(used)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    }
              
                }
                
                Divider().background(Color.white)
              
               
                }.padding().navigationBarTitle(Text(name), displayMode: .inline)
//            }
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






