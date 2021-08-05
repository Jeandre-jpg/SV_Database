//
//  MoreButtonView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/05.
//

import SwiftUI

struct MoreButtonView: View {
    
    
    var body: some View {
        Button(action: {
            print("Learn More")
         
        }, label: {
            HStack(spacing: 10){
                Image(systemName: "arrow.right")
                    .imageScale(.large)
            }
                    .padding(.vertical, 14)
                    .padding(.horizontal, 10)
                    .background(Capsule().strokeBorder(Color.pink, lineWidth: 1.35))
                    .accentColor(.pink)
        })
    }
}

struct MoreButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MoreButtonView()
            .previewLayout(.sizeThatFits)
    }
}
