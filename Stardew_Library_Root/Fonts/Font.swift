//
//  Font.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/07/28.
//

import Foundation
import SwiftUI

extension Font {
    public static func dogicabold(size: CGFloat) -> Font {
        return Font.custom("dogicabold", size: size)
    }

    
    public static func pixel(size: CGFloat) -> Font {
        return Font.custom("pixel", size: size)
    }
}

struct TitleFont: ViewModifier {
    let size: CGFloat
    
    func body(content: Content) -> some View {
        return content.font(.dogicabold(size: size))
    }
}

extension View {
    func titleFont(size: CGFloat) -> some View {
        return ModifiedContent(content: self, modifier: TitleFont(size: size))
    }
    
    func titleStyle() -> some View {
        return ModifiedContent(content: self, modifier: TitleFont(size: 16))
    }
}

