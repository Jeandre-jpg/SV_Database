//
//  FishView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct FishView : View {
    var fishes: [ItemsFishData] = testFishData
    
    var body: some View {
        NavigationView {
          
            List(fishes) { fish in
                FishShippedCell(fish: fish)
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gear")
                                .font(.title)
                        }
                        
                    }

                        
                    }
               }.navigationBarTitle("Fish", displayMode: .inline)
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
           HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100) {
                    NavigationLink(destination: ArtefactsView()) {
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
struct FishView_Previews : PreviewProvider {
    static var previews: some View {
        FishView(fishes: testFishData)
    }
}
#endif


struct FishShippedCell : View {
    let fish: ItemsFishData
    var body: some View {
        return NavigationLink(destination: FishDetailView(image: fish.image, name: fish.name,  info: fish.info, location: fish.location, season: fish.season, time: fish.time, sellprice: fish.sellprice, bundles: fish.bundles, behaviour: fish.behaviour, weather: fish.weather)) {
            Image(fish.image)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(fish.name)
                Text(fish.info)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}
