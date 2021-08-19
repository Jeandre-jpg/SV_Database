//
//  MineralsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//


import SwiftUI

struct MineralsView : View {
    var minerals: [MineralsData] = testMineralsData
    @State private var searchText = ""
    var body: some View {
        NavigationView{
        
            VStack(spacing: 20) {
            SearchBar(text: $searchText)
                .padding(.top, 20)
            List(minerals.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { mineral in
                MineralsShippedCell(mineral: mineral)
            }.onAppear() {
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
               }.navigationBarTitle("Minerals", displayMode: .inline)
        }.navigationBarColor(backgroundColor: .systemIndigo, tintColor: .white)
            .background(Color.black)
          
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
