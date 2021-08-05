//
//  ItemsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/05.
//

import SwiftUI

struct ItemsView : View {
    var ships: [ItemsShipped] = []
    
    var body: some View {
        NavigationView {
          
            List(ships) { ship in
                ItemsShippedCell(ship: ship)
            }.navigationBarTitle(Text("Items Shipped"))
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
        let ship: ItemsShipped
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
