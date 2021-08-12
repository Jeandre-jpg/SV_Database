//
//  ItemsShippedData.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/05.
//

import SwiftUI

struct ItemsShippedData: Identifiable {
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

#if DEBUG

let testData = [

    ItemsShippedData(image: "Wild_Horseradish", name: "Wild Horseradish",  info: "A spicy root found in the spring.", source: "Foraging, Spring Seeds", season: "Spring", health: [13, 5], sellprice: [50, 100], bundles: "Spring Foraging Bundle", recipes: "Shrimp Cocktail", crafting: "Wild Seeds"),
    
    ItemsShippedData(image: "Large_Egg", name: "Large Egg", info: "The Large Egg and the Large Brown Egg are animal products obtained from Chickens with sufficient friendship.", source: "Chicken", season: "All", health: [38, 17], sellprice: [95, 228], bundles: "Animal Bundle", recipes: "Fried Egg, Pancakes, Chocolate Cake, Pink Cake, Cookie, Blueberry Tart, Crab Cakes", crafting: "None"),
    
    ItemsShippedData(image: "Kale_Icon", name: "Kale", info: "Kale is a vegetable crop that grows from Kale Seeds after 6 days. Kale is harvested using a Scythe.", source: "Kale Seeds", season: "Spring", health: [50, 22], sellprice: [110, 242], bundles: "None", recipes: "Salmon Dinner, Stir Fry", crafting: "None"),
    
    ItemsShippedData(image: "Red_Cabbage", name: "Red Cabbage", info: "Often used in salads and coleslaws. The color can range from purple to blue to green-yellow depending on soil conditions.", source: "Red Cabbage Seeds", season: "Summer", health: [75, 33], sellprice: [260, 572], bundles: "Dye Bundle", recipes: "Coleslaw, Fish Taco, Red Plate", crafting: "None"),
    
    ItemsShippedData(image: "Cranberries_Icon", name: "Cranberries", info: "These tart red berries are a traditional winter food.", source: "Cranberry Seeds", season: "Fall", health: [38, 17], sellprice: [75, 165], bundles: "None", recipes: "Cranberry Candy, Cranberry Sauce, Stuffing, Super Meal", crafting: "Wild Seeds"),
    
    ItemsShippedData(image: "Duck_Mayonnaise", name: "Duck Mayonnaise", info: "It's a rich, yellow mayonnaise.", source: "Artisan Goods", season: "All", health: [0], sellprice: [375, 525], bundles: "None", recipes: "None", crafting: "None"),
    
    ItemsShippedData(image: "Preserves_Jar", name: "Jellies and Pickles", info: "Jellies and pickles can be produced by inserting either a fruit or a vegetable in a preserves jar, respectively.", source: "Farming Level 4", season: "All", health: [0], sellprice: [100, 224], bundles: "Artisan Bundle", recipes: "Preserves Jar", crafting: "None"),
    
    ItemsShippedData(image: "Daffodil_Icon", name: "Daffodil", info: "A traditional spring flower that makes a nice gift.", source: "Foraging, Spring Seeds", season: "Spring", health: [0, 0], sellprice: [30, 60], bundles: "Wild Seeds", recipes: "Shrimp Cocktail", crafting: "Wild Seeds"),
    
    ItemsShippedData(image: "Rhubarb_Icon", name: "Rhubarb", info: "The stalks are extremely tart, but make a great dessert when sweetened.", source: "Rhubarb Seeds", season: "Spring", health: [0], sellprice: [220, 484], bundles: "None", recipes: "Rhubarb Pie", crafting: "None"),
    
    ItemsShippedData(image: "Starfruit_Icon", name: "Starfruit", info: "An extremely juicy fruit that grows in hot, humid weather. Slightly sweet with a sour undertone.", source: "Starfruit Seeds", season: "Summer", health: [125, 56], sellprice: [750, 1650], bundles: "Remix Dye Bundle", recipes: "None", crafting: "None")
 
]
#endif
