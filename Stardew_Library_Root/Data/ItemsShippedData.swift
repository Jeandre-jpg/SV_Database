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
    
    ItemsShippedData(image: "Starfruit_Icon", name: "Starfruit", info: "An extremely juicy fruit that grows in hot, humid weather. Slightly sweet with a sour undertone.", source: "Starfruit Seeds", season: "Summer", health: [125, 56], sellprice: [750, 1650], bundles: "Remix Dye Bundle", recipes: "None", crafting: "None"),
    
    /////
    
    ItemsShippedData(image: "Holly_Icon", name: "Holly",  info: "The leaves and bright red berries make a popular winter decoration.", source: "Foraging", season: "Winter", health: [37, 97], sellprice: [80, 160], bundles: "Remixed Winter Foraging Bundle", recipes: "None", crafting: "None"),
    
    ItemsShippedData(image: "Void_Mayonnaise", name: "Void Mayonnaise", info: "A thick, black paste that smells like burnt hair.", source: "Chicken", season: "All", health: [75, 100], sellprice: [275, 385], bundles: "None", recipes: "Strange Bun", crafting: "None"),
    
    ItemsShippedData(image: "Beer_Icon", name: "Beer", info: "Drink in moderation.", source: "Artisan Goods, The Saloon, Ginger Island Resort", season: "All", health: [50, 22], sellprice: [200, 560], bundles: "None", recipes: "None", crafting: "None"),
    
    ItemsShippedData(image: "Leek_Icon", name: "Leek", info: "A tasty relative of the onion.", source: "Foraging, Spring Seeds", season: "Spring", health: [40, 18], sellprice: [60, 120], bundles: "Spring Foraging Bundle", recipes: "None", crafting: "Wild Seeds (Sp)"),
    
    ItemsShippedData(image: "Brown_Egg", name: "Brown Egg", info: "A regular brown chicken egg.", source: "Chicken", season: "All", health: [25, 11], sellprice: [50, 120], bundles: "Home Cook's Bundle, Remixed Animal Bundle", recipes: "Fried Egg, Omelet, Pancakes, Chocolate Cake, Pink Cake, Cookie, Blueberry Tart, Crab Cakes", crafting: "None"),
    
    ItemsShippedData(image: "Melon_Icon", name: "Melon", info: "A cool, sweet summer treat.", source: "Melon Seeds", season: "Summer", health: [113, 50], sellprice: [250, 550], bundles: "Summer Crops Bundle", recipes: "Fruit Salad, Pink Cake", crafting: "None"),
    
    ItemsShippedData(image: "Corn_Icon", name: "Corn", info: "One of the most popular grains. The sweet, fresh cobs are a summer favorite.", source: "Corn Seeds", season: "Summer, Fall", health: [25, 11], sellprice: [50, 110], bundles: "Fall Crops Bundle, Quality Crops Bundle, Remixed Quality Crops Bundle", recipes: "Tortilla", crafting: "Oil"),
    
    ItemsShippedData(image: "Beet_Icon", name: "Beet", info: "A sweet and earthy root vegatable. As a bonus, the leaves make a great salad.", source: "Beet Seeds", season: "Fall", health: [30, 13], sellprice: [100, 220], bundles: "Remixed Dye Bundle", recipes: "Vegetable Medley", crafting: "Sugar"),
    
    ItemsShippedData(image: "Clay_Icon", name: "Clay", info: "Used in crafting and construction.", source: "Artifact Spot, Geodes", season: "All", health: [0], sellprice: [20], bundles: "None", recipes: "Quality Retaining Soil, Garden Pot, Brick Floor, Fiber Seeds, Deluxe Retaining Soil, Bone Mill", crafting: "None"),
    
    ItemsShippedData(image: "Wine_Icon", name: "Wine", info: "Drink in moderation.", source: "Artisan Goods", season: "All", health: [50, 22], sellprice: [0], bundles: "Enchanter's Bundle, The Missing Bundle, Brewer's Bundle", recipes: "None", crafting: "None")
 
]
#endif
