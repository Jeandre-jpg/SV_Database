//
//  SettingsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import SwiftUI

var colour9 = hexStringToUIColor(hex: "#F2BE22")
var colour10 = hexStringToUIColor(hex: "#42B5F4")


struct SettingsView: View {
    
    @State var receive = false
    @State var notificationsOn = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundImageShack()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 1){
                    
                   
    
        VStack(alignment: .center){
    
    Text("Settings").font(Font.custom("pixel", size: 33))
        .padding()
        .foregroundColor(.white)
            
            cell(header: "App Description",color: Color(colour10), text: "The application will be connected to the game, Stardew Valley. The app will show some of the collectables within the game, from Items Shipped, Fish, Artefacts, Minerals and Cooking. This library system will also then show each categories information on a certain object.")
                .frame(width: 400, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
        }
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    
            
          
                                    cell(header: "GitHub Link",color: Color(colour10),text: "https: //github.com/Jeandre-jpg/Stardew_Library.git")
                                        .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                     
                                cell(header: "App Name",color: Color(colour10), text: "Stardew Library")
                                    .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                 
                  
                                cell(header: "Developer Name",color: Color(colour10), text: "Jeandré De Villiers")
                                    .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                                
                        
                       
                       
                
                
               
                   }
           
                
}
        
     
           }.toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                    NavigationLink(destination: HomeView()) {
                        Image(systemName: "house.fill")
                            .font(.title)
                    }
                    
                }

                    
                }
           }.navigationBarTitle("Settings", displayMode: .inline)
            
    
        } .navigationBarColor(backgroundColor: .systemIndigo, tintColor: .white)

    }

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

    struct MoonImage : View {
        
        var body: some View {
            Image("moon")
                .resizable()
                .frame(width: 25, height: 25)
                .aspectRatio(contentMode: .fit)
                .padding()
        }
    }

    func cell(header: String, color: Color, text: String) -> some View {
       
        HStack {
            
            VStack(alignment: .leading, spacing: 10) {
                Text(header)
                    .font(Font.custom("pixel", size: 20))
                Text(text)
                   .fontWeight(.semibold)
                    .font(Font.custom("dogica", size: 10))
            }
            Spacer()
            
        }
        
        .padding(27)
        .foregroundColor(.white)
        .background(color)
        .cornerRadius(10)
        .padding()
    }
    
    struct BackgroundImageShack : View {
        
        var body: some View {
            Image("shack_background")
                .resizable()
                .frame(width: 500, height: 900)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        }
    }


}
