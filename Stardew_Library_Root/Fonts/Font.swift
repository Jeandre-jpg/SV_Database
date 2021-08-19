//
//  Font.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import Foundation
import SwiftUI

struct RockSaltModifer: ViewModifier {
    
    var style: UIFont.TextStyle = .body
    var weight: Font.Weight = .regular
    
    var textColor: Color {
        switch style {
        case .body:
            return .white
        case .caption1:
            return Color.black.opacity(0.8)
        default:
            return .black
        }
    }

    func body(content: Content) -> some View {
        content
            .font(Font.custom("RockSalt-Regular", size: UIFont.preferredFont(forTextStyle: style).pointSize)
            .weight(weight))
        .foregroundColor(textColor)
    }
    
}

extension View {
    func RockSalt(style: UIFont.TextStyle, weight: Font.Weight) -> some View {
        self.modifier(RockSaltModifer(style: style, weight: weight))
    }
}

struct PixelModifer: ViewModifier {
    
    var style: UIFont.TextStyle = .body
    var weight: Font.Weight = .regular
    
    var textColor: Color {
        switch style {
        case .title1:
            return .blue
        case .caption1:
            return Color.black.opacity(0.8)
        default:
            return .black
        }
    }

    func body(content: Content) -> some View {
        content
            .font(Font.custom("pixel", size: UIFont.preferredFont(forTextStyle: style).pointSize)
            .weight(weight))
        .foregroundColor(textColor)
    }
    
}


extension View {
    func Pixel(style: UIFont.TextStyle, weight: Font.Weight) -> some View {
        self.modifier(PixelModifer(style: style, weight: weight))
    }
}
