//
//  MineralsData.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct MineralsData: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var sellprice: [Int]
    var location: String
    var used: String
}

#if DEBUG

let testMineralsData = [

    MineralsData(image: "Quartz_Icon", name: "Quartz",  info: "A clear crystal commonly found in caves and mines.", sellprice: [25, 32], location: "The Mines (Floors 1-120), Garbage Can, Stone Golem (10%)", used: "Geologist's Bundle, Refined Quartz, Fish Pond (Quest)"),
    
    MineralsData(image: "Earth_Crystal", name: "Earth Crystal",  info: "A resinous substance found near the surface.", sellprice: [50, 65], location: "The Mines (Floors 1-39), Duggy (10%), Haunted Skull (1.3%), Fishing Treasure Chest, Panning, Geode, Omni Geode, Garbage Can", used: "Geologist's Bundle, Mayonnaise Machine, Sturdy Ring, Fish Pond (Quest)"),
    
    MineralsData(image: "Frozen_Tear", name: "Frozen Tear",  info: "A crystal fabled to be the frozen tears of a yeti.", sellprice: [75, 97], location: "The Mines (Floors 40-79), Fishing Treasure Chest, Panning, Frozen Geode, Omni Geode, Dust Sprite (2%), Garbage Can", used: " Geologist's Bundle, Warrior Ring, Fish Pond (Quest)"),
    
    MineralsData(image: "Fire_Quartz", name: "Fire Quartz",  info: "A glowing red crystal commonly found near hot lava.", sellprice: [100, 130], location: "The Mines (Floors 80-120), Fishing Treasure Chest, Panning, Magma Geode, Omni Geod, Garbage Can", used: "Geologist's Bundle, Slime Egg-Press, Refined Quartz, Fish Pond (Quest)"),
    
    MineralsData(image: "Emerald_Icon", name: "Emerald",  info: "A precious stone with a brilliant green color.", sellprice: [250, 325], location: "Emerald Node.png Emerald Node, Gem Node, Panning, Garbage Can, Fishing Treasure Chest, Feast of the Winter Star", used: "Fish Pond (Quest), Forge weapons"),
    
    MineralsData(image: "Aquamarine_Icon", name: "Aquamarine",  info: "A shimmery blue-green gem.", sellprice: [180, 234], location: " Aquamarine Node, Gem Node, Panning, Garbage Can, Fishing Treasure Chest", used: "Dye Bundle, Marble Brazier, Fish Pond (Quest), Forge weapons"),
    
    MineralsData(image: "Ruby_Icon", name: "Ruby",  info: "A precious stone that is sought after for its rich color and beautiful luster.", sellprice: [250, 325], location: "Ruby Node, Gem Node, Panning, Garbage Can, Fishing Treasure Chest, Feast of the Winter Star", used: "Forge weapons"),
    
    MineralsData(image: "Amethyst_Icon", name: "Amethyst",  info: "A purple variant of quartz.", sellprice: [100, 130], location: "Amethyst Node, Gem Node, Green Slimes, Panning, Garbage Can, Fishing Treasure Chest", used: "Fish Pond (Quest), Forge weapons"),
    
    MineralsData(image: "Topaz_Icon", name: "Topaz",  info: "    Fairly common but still prized for its beauty.", sellprice: [80, 104], location: "Topaz Node, Gem Node, Panning, Garbage Can, Fishing Treasure Chest", used: "Fish Pond (Quest), Forge weapons"),
    
    MineralsData(image: "Jade_Icon", name: "Jade",  info: "A pale green ornamental stone.", sellprice: [200, 260], location: "Jade Node, Gem Node, Blue Slimes, Garbage Can, Fishing Treasure Chest, Feast of the Winter Star", used: "Fish Pond (Quest), Forge weapons")

]
#endif
