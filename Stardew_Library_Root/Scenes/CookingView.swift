//
//  CookingView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct CookingView : View {
    var cookings: [CookingData] = testCookingData
  
    @State private var searchText = ""
    var body: some View {
        NavigationView{
        
            VStack(spacing: 20) {
            SearchBar(text: $searchText)
                .padding(.top, 20)
                
            List(cookings.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { cooking in
                CookingShippedCell(cooking: cooking)
                   
                   
            }
            .onAppear() {
                UITableView.appearance().backgroundColor = UIColor.black
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gear")
                                .font(.title)
                        }
                        
                    }

                        
                    }
               }.navigationBarTitle("Cooking", displayMode: .inline)
       
        

        }.navigationBarColor(backgroundColor: .systemIndigo, tintColor: .white)
            .background(Color.black)
        }
    
}
}

#if DEBUG
struct CookingView_Previews : PreviewProvider {
    static var previews: some View {
        CookingView(cookings: testCookingData)
    }
}
#endif


struct CookingShippedCell : View {
    let cooking: CookingData
    var body: some View {
        return NavigationLink(destination: CookingDetailView(image: cooking.image, name: cooking.name,  info:cooking.info, source: cooking.source, health: cooking.health, sellprice: cooking.sellprice, bundles: cooking.bundles, ingredients: cooking.ingredients, recipes: cooking.recipes)) {
            Image(cooking.image)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(cooking.name)
                Text(cooking.info)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}
