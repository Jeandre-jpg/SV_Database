//
//  ItemsShipped.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/05.
//

import SwiftUI

struct ItemsShipped: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var source: String
    var season: String
    var health: [Int]
    var sellprice: [Int]
    var bundles: String
    var recipes: String
    var crafting: String
}
