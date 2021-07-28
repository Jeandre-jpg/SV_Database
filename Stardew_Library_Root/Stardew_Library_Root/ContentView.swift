//
//  ContentView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI

var color1 = hexStringToUIColor(hex: "#EEE8E8")

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(color1)
        .edgesIgnoringSafeArea(.all)
        
            VStack(alignment: .center){
        Text("Stardew Library").font(Font.custom("pixel", size: 33))
            .padding()
                
                Text("App Version: 0. 01. 01").font(Font.custom("dogicapixel", size: 15))
                    
                
                Text("Developed by: Jeandré De Villiers").font(Font.custom("dogicapixel", size: 15))
                    .padding()
                
                
                ChickenImage()
                
                
                StartButtonView()
                    .padding(.vertical, 20)
    }
          
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    struct ChickenImage : View {
        
        var body: some View {
            Image("chicken_image")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fit)
                .padding()
        }
    }

