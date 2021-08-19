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
    
    CookingData(image: "Fried_Mushroom", name: "Fried Mushroom",  info: "Earthy and aromatic.", source: "Demetrius (Mail)", health: [135, 60], sellprice: [250], bundles: "None", ingredients: "Common Mushroom, Morel, Oil", recipes: "None"),
    
    CookingData(image: "Pepper_Poppers", name: "Pepper Poppers",  info: "Spicy breaded peppers filled with cheese.", source: "Shane (Mail)", health: [130, 58], sellprice: [200], bundles: "None", ingredients: "Hot Pepper, Cheese", recipes: "None"),
    
    CookingData(image: "Spicy_Eel", name: "Spicy Eel",  info: "It's really spicy! Be careful.", source: "George (Mail)", health: [115, 51], sellprice: [175], bundles: "None", ingredients: "Eel, Hot Pepper", recipes: "None"),
    
    CookingData(image: "Pumpkin_Soup", name: "Pumpkin Soup",  info: "A seasonal favorite.", source: "Robin (Mail)", health: [200, 90], sellprice: [300], bundles: "None", ingredients: "Pumpkin, Milk", recipes: "None"),
    
    CookingData(image: "Seafoam_Pudding", name: "Seafoam Pudding",  info: "This briny pudding will really get you into the maritime mindset!", source: "Fishing (Lv 9)", health: [175, 78], sellprice: [300], bundles: "None", ingredients: "Flounder, Midnight Carp, Squid Ink", recipes: "None"),
    
    CookingData(image: "Blackberry_Cobbler", name: "Blackberry Cobbler",  info: "There's nothing quite like it.", source: "The Queen of Sauce 14 Fall, Year 2", health: [175, 78], sellprice: [260], bundles: "None", ingredients: "Blackberry, Sugar, Wheat Flour", recipes: "None"),
    
    CookingData(image: "Maple_Bar", name: "Maple Bar",  info: "It's a sweet doughnut topped with a rich maple glaze.", source: "The Queen of Sauce 14 Summer, Year 2", health: [225, 101], sellprice: [300], bundles: "None", ingredients: "Maple Syrup, Sugar, Wheat Flour", recipes: "None"),
    
    CookingData(image: "Salad_Icon", name: "Salad",  info: "A healthy garden salad.", source: "Emily (Mail)", health: [113, 50], sellprice: [110], bundles: "None", ingredients: "Leek, Dandelion, Vinegar", recipes: "None"),
    
    CookingData(image: "Pizza_Icon", name: "Pizza",  info: "It's popular for all the right reasons.", source: "The Queen of Sauce 7 Spring, Year 2, Stardrop Saloon for 150g", health: [150, 67], sellprice: [300], bundles: "None", ingredients: "Wheat Flour, Tomato, Cheese", recipes: "None"),
    
    CookingData(image: "Bread_Icon", name: "Bread",  info: "A crusty baguette.", source: "The Queen of Sauce 28 Summer, Year 1, Stardrop Saloon for 100g", health: [50, 22], sellprice: [60], bundles: "None", ingredients: "Wheat Flour", recipes: "Bruschetta, Stuffing, Survival Burger"),
    
    CookingData(image: "Sashimi_Icon", name: "Sashimi",  info: "Raw fish sliced into thin pieces.", source: "Linus (Mail)", health: [75, 33], sellprice: [75], bundles: "None", ingredients: "Any Fish", recipes: "None")
  
]
#endif
