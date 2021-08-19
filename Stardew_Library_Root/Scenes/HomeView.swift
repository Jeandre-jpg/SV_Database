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
    @State private var searchText = ""
    var body: some View {
       
        NavigationView {
            ZStack {
                BackgroundImageMoon()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
    
            VStack(alignment: .leading, spacing: 10){
            
            
    Text("Welcome").font(Font.custom("pixel", size: 33))
        .foregroundColor(.white)
        .padding(10)
                
              
                SearchBar(text: $searchText)
                    .padding(.top, 20)
              
            
                cell(header: "The official unofficial Stardew Valley Database",color: Color(colour10))
                    .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            
            }.frame(width: 350, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        
           
            VStack {
                       HStack {
                        VStack{
                            Button(action: {
                                print("Items View Button Click")
                            }, label: {
                                NavigationLink(destination: ItemsView()) {
                                    cell1(image: Image("64px-ShippingBox"), header: "Items Shipped",color: Color(colour4), text: "Shipping allows the player to sell items.")
                                    
                                 }
                            })
                               
                            }
                                   
                                
                            
                           
                        Button(action: {
                            print("Fish Button Click")
                        }, label: {
                            NavigationLink(destination: FishView()) {
                                cell2(image: Image("Cooking_Icon"),header: "Fish",color: Color(colour5), text:"Fish can be found in the ocean, lakes, rivers, and in certain levels of the mines.")
                             }
                        })
                       
                        
                       }
                       HStack {
                        
                        Button(action: {
                            print("Items View Button Click")
                        }, label: {
                            NavigationLink(destination: ArtefactsView()) {
                                
                                cell3(image: Image("Cooking_Icon"),header: "Artefacts",color: Color(colour6), text:"Can be donated to the Museum.")
                             }
                        })
                        
                        Button(action: {
                            print("Items View Button Click")
                        }, label: {
                            NavigationLink(destination: MineralsView()) {
                                cell4(image: Image("Cooking_Icon"),header: "Minerals",color: Color(colour7), text: "Found in The Mines and the Skull Cavern.")
                             }
                        })
                        
                        
                       
                       }
                
                Button(action: {
                    print("Cooking View Button Click")
                }, label: {
                    NavigationLink(destination: CookingView()) {
                        cell5(image: Image("Cooking_Icon"),header: "Cooking",color: Color(colour8), text: "Cooking is a game mechanic.")
                     }
                })
                
               
                   }.frame(width: 350, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
           
                
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

    
        }.navigationBarColor(backgroundColor: .systemIndigo, tintColor: .white)

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
                 .RockSalt(style: .body, weight: .bold)
        }
       
    }
    
    .padding(7)
    .foregroundColor(.white)
    .background(color)
    .cornerRadius(10)
}

func cell1(image: Image, header: String, color: Color, text: String) -> some View {
    HStack {
        VStack(alignment: .leading) {
            Image("64px-ShippingBox")
                .resizable()
                .frame(width: 45, height: 45)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            Text(header)
                 .RockSalt(style: .body, weight: .bold)
            Text(text)
                .font(.body)
        }
        Spacer()
    }

    .padding(7)
    .foregroundColor(.white)
    .background(color)
    .cornerRadius(10)
  

}


func cell2(image: Image, header: String, color: Color, text: String) -> some View {
    HStack {
        VStack(alignment: .leading) {
            Image("Bream_Icon")
                .resizable()
                .frame(width: 45, height: 45)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            Text(header)
                 .RockSalt(style: .body, weight: .bold)
            Text(text)
                .font(.body)
        }
        Spacer()
    }
   
    .padding(7)
    .foregroundColor(.white)
    .background(color)
    .cornerRadius(10)
  

}


func cell3(image: Image, header: String, color: Color, text: String) -> some View {
    HStack {
        VStack(alignment: .leading) {
            Image("Ancient_Sword")
                .resizable()
                .frame(width: 45, height: 45)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            Text(header)
                 .RockSalt(style: .body, weight: .bold)
            Text(text)
                .font(.body)
        }
        Spacer()
    }
  
    .padding(7)
    .foregroundColor(.white)
    .background(color)
    .cornerRadius(10)
  

}


func cell4(image: Image, header: String, color: Color, text: String) -> some View {
    HStack {
        VStack(alignment: .leading) {
            Image("Diamond_Icon")
                .resizable()
                .frame(width: 45, height: 45)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            Text(header)
                 .RockSalt(style: .body, weight: .bold)
            Text(text)
                .font(.body)
        }
        Spacer()
    }
   
    .padding(7)
    .foregroundColor(.white)
    .background(color)
    .cornerRadius(10)
  

}
func cell5(image: Image, header: String, color: Color, text: String) -> some View {
    HStack {
        VStack(alignment: .leading) {
            Image("Cooking_Icon")
                .resizable()
                .frame(width: 45, height: 45)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            Text(header)
                 .RockSalt(style: .body, weight: .bold)
            Text(text)
                .font(.body)
        }
        Spacer()
    }
    .padding(7)
    .foregroundColor(.white)
    .background(color)
    .cornerRadius(10)
  

}

struct BackgroundImageMoon : View {
    
    var body: some View {
        Image("moon_background")
            .resizable()
            .frame(width: .infinity, height: .infinity)
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
}

