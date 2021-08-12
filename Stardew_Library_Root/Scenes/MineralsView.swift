//
//  MineralsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//


import SwiftUI

struct MineralsView : View {
    var minerals: [MineralsData] = testMineralsData
    
    var body: some View {
        NavigationView {
          
            List(minerals) { mineral in
                MineralsShippedCell(mineral: mineral)
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
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
           HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100) {
                    NavigationLink(destination: CookingView()) {
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
struct MineralsView_Previews : PreviewProvider {
    static var previews: some View {
        MineralsView(minerals: testMineralsData)
    }
}
#endif


struct MineralsShippedCell : View {
    let mineral: MineralsData
    var body: some View {
        return NavigationLink(destination: MineralsDetailView(image: mineral.image, name: mineral.name,  info: mineral.info, sellprice: mineral.sellprice, location:mineral.location, used: mineral.used)) {
            Image(mineral.image)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(mineral.name)
                Text(mineral.info)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}
