//
//  CookingData.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct CookingData: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var source: String
    var health: [Int]
    var sellprice: [Int]
    var bundles: String
    var ingredients: String
    var recipes: String
}

#if DEBUG

let testCookingData = [

    CookingData(image: "Fried_Egg", name: "Fried Egg",  info: "Sunny-side up.", source: "Upgraded farmhouse", health: [50, 22], sellprice: [35], bundles: "Chef's Bundle", ingredients: "Egg", recipes: "Complete Breakfast"),
    
    CookingData(image: "Lucky_Lunch", name: "Lucky Lunch",  info: "A special little meal.", source: "The Queen of Sauce, 28 Spring, Year 2", health: [100, 45], sellprice: [250], bundles: "None", ingredients: "Sea Cucumber, Tortilla, Blue Jazz", recipes: "None"),
    
    CookingData(image: "Crispy_Bass", name: "Crispy Bass",  info: "Wow, the breading is perfect.", source: " Kent (Mail)", health: [90, 40], sellprice: [150], bundles: "None", ingredients: "Largemouth Bass, Wheat Flour, Oil", recipes: "None"),
    
    CookingData(image: "Fried_Eel", name: "Fried Eel",  info: "Greasy but flavorful.", source: "George (Mail)", health: [75, 33], sellprice: [120], bundles: "None", ingredients: "Eel, Oil", recipes: "None"),
    
    CookingData(image: "Autumns_Bounty", name: "Autumn's Bounty",  info: "A taste of the season.", source: "Exotic Foraging Bundle, Demetrius (Mail)", health: [220, 99], sellprice: [250], bundles: "None", ingredients: "Yam, Pumpkin", recipes: "None"),
    
    CookingData(image: "Triple_Shot_Espresso", name: "Triple Shot Espresso",  info: "It's more potent than regular coffee!", source: "Museum donation, Desert Trader, Stardrop Saloon for 5,000g", health: [8, 3], sellprice: [450], bundles: "None", ingredients: "Coffee", recipes: "None"),
    
    CookingData(image: "Fruit_Salad", name: "Fruit Salad",  info: "A delicious combination of summer fruits.", source: "The Queen of Sauce 7 Fall, Year 2", health: [473, 212], sellprice: [250], bundles: "None", ingredients: "Blueberry, Melon, Apricot", recipes: "None"),
    
    CookingData(image: "Lobster_Bisque", name: "Lobster Bisque",  info: "This delicate soup is a secret family recipe of Willy's.", source: "The Queen of Sauce 14 Winter, Year 2, Willy (Mail)", health: [225, 101], sellprice: [205], bundles: "None", ingredients: "Egg, Milk", recipes: "Farmer's Lunch"),
    
    CookingData(image: "Omelet_Icon", name: "Omelet",  info: "It's super fluffy.", source: "The Queen of Sauce 28 Spring, Year 1, Stardrop Saloon for 100g", health: [100, 45], sellprice: [125], bundles: "None", ingredients: "Sea Cucumber, Tortilla, Blue Jazz", recipes: "None"),
    
    CookingData(image: "Fried_Mushroom", name: "Fried Mushroom",  info: "Earthy and aromatic.", source: "Demetrius (Mail)", health: [135, 60], sellprice: [250], bundles: "None", ingredients: "Common Mushroom, Morel, Oil", recipes: "None")
  
]
#endif
