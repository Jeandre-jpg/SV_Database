//
//  CookingView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct CookingView : View {
    var cookings: [CookingData] = testCookingData
    
    var body: some View {
        NavigationView {
          
            List(cookings) { cooking in
                CookingShippedCell(cooking: cooking)
            } .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gear")
                                .font(.title)
                        }
                        
                    }

                        
                    }
               }.navigationBarTitle("Cooking", displayMode: .inline)
            
            
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
