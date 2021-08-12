//
//  ContentView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI
//import SSSwiftUIGIFView

var color1 = hexStringToUIColor(hex: "#EEE8E8")

struct ContentView: View {
    
   
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
          
            if self.isActive {
                
                HomeView()
            } else {
                ZStack {
                    //  Color(color1)
                  BackgroundImage()
                .edgesIgnoringSafeArea(.all)
                
                    VStack(alignment: .center){
                Text("Stardew Library").font(Font.custom("pixel", size: 33))
                    .foregroundColor(.white)
                    .padding()
                    
                        
                        Text("App Version: 0. 01. 01").font(Font.custom("dogicapixel", size: 15))
                            .padding()
                            .background(
                                Color.purple.ignoresSafeArea())
                            .cornerRadius(20)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            
                        
                        Text("Developed by: Jeandré De Villiers").font(Font.custom("dogicapixel", size: 10))
                            .padding()
                            .foregroundColor(.white)
                        
                        
                       // SwiftUIGIFPlayerView(gifName: "chicken")
                        
                     ChickenImage()
                        
                        
                      
            }
                  
            }
            }
        }
      
        .onAppear {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
              
                withAnimation {
                    self.isActive = true
                }
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
                .shadow(radius: 30)
        }
    }


struct BackgroundImage : View {
    
    var body: some View {
        Image("background_black")
            .resizable()
            .frame(width: 500, height: 900)
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
}

