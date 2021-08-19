//
//  CustomButton.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/18.
//
import SwiftUI

struct CustomButton: View {

    @State private var buttonBackColor:Color = .pink

    var body: some View {
        Button(action: {

            //This changes colors to three different colors.
            //Just in case you wanted more than two colors.
             if (self.buttonBackColor == .yellow) {
                 self.buttonBackColor = .blue
             } else if self.buttonBackColor == .blue {
                 self.buttonBackColor = .green
             } else {
                 self.buttonBackColor = .yellow
             }
        }) {

        Text("Change Colour")
            .font(Font.custom("pixel", size: 25))
        }
        .frame(width: 300, height: 50, alignment: .center)
        .padding(.all, 20)
        .foregroundColor(.white)
        .background(buttonBackColor)
        .cornerRadius(20)
        .shadow(radius: 30)
    }
}
