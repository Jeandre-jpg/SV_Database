//
//  ItemsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/05.
//

import SwiftUI


struct ItemsView : View {
    var ships: [ItemsShippedData] = testData
    
    var body: some View {
        NavigationView {
          
            List(ships) { ship in
                ItemsShippedCell(ship: ship)
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gear")
                                .font(.title)
                        }
                        
                    }

                        
                    }
               }.navigationBarTitle("Items Shipped", displayMode: .inline)
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
           HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100) {
                    NavigationLink(destination: FishView()) {
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
struct ItemsView_Previews : PreviewProvider {
    static var previews: some View {
        ItemsView(ships: testData)
    }
}

#endif

    struct ItemsShippedCell : View {
        let ship: ItemsShippedData
        var body: some View {
            return NavigationLink(destination: ItemShippedDetailView(image: ship.image, name: ship.name, info: ship.season, source: ship.source, season: ship.info, health: ship.health, sellprice: ship.sellprice, bundles: ship.bundles, recipes: ship.recipes, crafting: ship.crafting)) {
                Image(ship.image)
                    .cornerRadius(40)
                VStack(alignment: .leading) {
                    Text(ship.name)
                    Text(ship.info)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
    }
