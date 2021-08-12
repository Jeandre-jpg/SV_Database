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
       
        NavigationView {
            ZStack {
                Color(colour3)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
    
        HStack(alignment: .lastTextBaseline){
            
            
    Text("Welcome!").font(Font.custom("pixel", size: 33))
        .padding()
            
            
        }
        
    
            
            
            cell(header: "The official unofficial Stardew Valley Database",color: Color(colour10))
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                
            
            Text("The application will be connected to the game, Stardew Valley. The app will show some of the collectables within the game, from Items Shipped, Fish, Artefacts, Minerals and Cooking. This library system will also then show each categories information on a certain object.")
                .font(Font.custom("dogicapixel", size: 15))
                .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            }
           
            VStack {
                       HStack {
                        VStack{
                            Button(action: {
                                print("Items View Button Click")
                            }, label: {
                                NavigationLink(destination: ItemsView()) {
                                    cell(header: "Items Shipped 📦",color: Color(colour4))
                                 }
                            })
                               
                            }
                                   
                                
                            
                           
                        Button(action: {
                            print("Items View Button Click")
                        }, label: {
                            NavigationLink(destination: FishView()) {
                                cell(header: "Fish 🐟",color: Color(colour5))
                             }
                        })
                       
                        
                       }
                       HStack {
                        
                        Button(action: {
                            print("Items View Button Click")
                        }, label: {
                            NavigationLink(destination: ArtefactsView()) {
                                
                                cell(header: "Artefacts 🏺",color: Color(colour6))
                             }
                        })
                        
                        Button(action: {
                            print("Items View Button Click")
                        }, label: {
                            NavigationLink(destination: MineralsView()) {
                                cell(header: "Minerals 💎",color: Color(colour7))
                             }
                        })
                        
                        
                       
                       }
                
                Button(action: {
                    print("Items View Button Click")
                }, label: {
                    NavigationLink(destination: CookingView()) {
                        cell(header: "Cooking 🍽",color: Color(colour8))
                     }.padding(10)
                })
                
               
                   }
           
                
}
        
     
           }        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear")
                            .font(.title)
                    }
                    
                }

                    
                }
           }.navigationBarTitle("Home", displayMode: .inline)
            
    
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
           HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "arrow.right.circle")
                            .font(.title)
                            .padding(100)
                    }
               
           }
       


            }
       
        
        
      
}
    
        }

    }
}
    

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
           
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
