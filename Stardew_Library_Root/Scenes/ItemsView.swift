//
//  ItemsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/05.
//

import SwiftUI


struct ItemsView : View {
    var ships: [ItemsShippedData] = testData
    @State private var searchText = ""
    var body: some View {
        NavigationView{
        
            VStack(spacing: 20) {
            SearchBar(text: $searchText)
                .padding(.top, 20)
            List(ships.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { ship in
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
        } .navigationBarColor(backgroundColor: .systemIndigo, tintColor: .white)
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
