//
//  HomeView.swift
//  
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI

var colour3 = hexStringToUIColor(hex: "#9BA8F2")
var colour4 = hexStringToUIColor(hex: "#F2BE22")
var colour5 = hexStringToUIColor(hex: "#8806BF")
var colour6 = hexStringToUIColor(hex: "#5ED907")
var colour7 = hexStringToUIColor(hex: "#C936FF")
var colour8 = hexStringToUIColor(hex: "#F25C05")

struct HomeView: View {
    var body: some View {
        
        ZStack {
            Color(colour3)
        .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
        
            HStack(alignment: .lastTextBaseline){
                
                SettingsImage()
                
        Text("Welcome!").font(Font.custom("pixel", size: 33))
            .padding()
                
                HomeImage()
                
                
                
            }
            
        
                
                
                cell(header: "The official unofficial Stardew Valley Database",color: Color(colour10))
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                    
                
                Text("The application will be connected to the game, Stardew Valley. The app will show some of the collectables within the game, from Items Shipped, Fish, Artefacts, Minerals and Cooking. This library system will also then show each categories information on a certain object.")
                    .font(Font.custom("dogicapixel", size: 15))
                    .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                }
                
                VStack {
                           HStack {
                            cell(header: "Items Shipped 📦",color: Color(colour4))
                           
                            cell(header: "Fish 🐟",color: Color(colour5))
                           }
                           HStack {
                            cell(header: "Artefacts 🏺",color: Color(colour6))
                            cell(header: "Minerals 💎",color: Color(colour7))
                           
                           }
                    
                    cell(header: "Cooking 🍽",color: Color(colour8))
                       } .padding(10)
               
                    
    }
            
         
               }

    
            
            
            
          
    }
        
           }
    

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



struct SettingsImage : View {
    
    var body: some View {
        Image("IconSettings")
            .resizable()
            .frame(width: 25, height: 25)
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}



struct HomeImage : View {
    
    var body: some View {
        Image("IconHome")
            .resizable()
            .frame(width: 25, height: 25)
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

func cell(header: String, color: Color) -> some View {
    HStack {
        VStack(alignment: .leading) {
            Text(header)
                .font(Font.custom("pixel", size: 23))
        }
        Spacer()
    }
    
    .padding(20)
    .foregroundColor(.white)
    .background(color)
    .cornerRadius(10)
    .padding(10)
}
