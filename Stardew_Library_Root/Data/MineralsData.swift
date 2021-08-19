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
    
    MineralsData(image: "Topaz_Icon", name: "Topaz",  info: "Fairly common but still prized for its beauty.", sellprice: [80, 104], location: "Topaz Node, Gem Node, Panning, Garbage Can, Fishing Treasure Chest", used: "Fish Pond (Quest), Forge weapons"),
    
    MineralsData(image: "Jade_Icon", name: "Jade",  info: "A pale green ornamental stone.", sellprice: [200, 260], location: "Jade Node, Gem Node, Blue Slimes, Garbage Can, Fishing Treasure Chest, Feast of the Winter Star", used: "Fish Pond (Quest), Forge weapons"),
    
    MineralsData(image: "Diamond_Icon", name: "Diamond",  info: "A rare and valuable gem.", sellprice: [750, 975], location: " Diamond Node, Gem Node, Panning, Garbage Can, Fishing Treasure Chest, Any monster after reaching the bottom of the mines (0.05%)", used: "Fish Pond (Quest), Forge weapons, Ring of Yoba"),
    
    MineralsData(image: "Prismatic_Shard", name: "Prismatic Shard",  info: "A very rare and powerful substance with unknown origins.", sellprice: [2000, 2600], location: "Iridium Node (4%), Mystic Stone (25%), Gem Node, Omni Geode (0.4%), Shadow Brute (0.05%), Shadow Shaman (0.05%), Mummy (0.1%), Serpent (0.1%), Fishing Treasure Chest, Any monster after reaching the bottom of the mines (0.05%)", used: "Obtain the Galaxy Sword in the Desert, Transform children into doves at the Dark Shrine of Selfishness, Enchant tools and weapons"),
    
    MineralsData(image: "Tigerseye_Icon", name: "Tigerseye",  info: "A stripe of shimmering gold gives this gem a warm luster.", sellprice: [275, 357], location: " Magma Geode, Omni Geode", used: "None"),
    
    MineralsData(image: "Opal_Icon", name: "Opal",  info: "Its internal structure causes it to reflect a rainbow of light.", sellprice: [150, 195], location: "Frozen Geode, Omni Geode", used: "None"),
    
    MineralsData(image: "Fire_Opal", name: "Fire Opal",  info: "A rare variety of opal, named for its red spots.", sellprice: [350, 455], location: "Magma Geode, Omni Geode", used: "None"),
    
    MineralsData(image: "Alamite_Icon", name: "Alamite",  info: "Its distinctive fluorescence makes it a favorite among rock collectors.", sellprice: [150, 195], location: "Geode, Omni Geode", used: "None"),
    
    MineralsData(image: "Bixite_Icon", name: "Bixite",  info: "A dark metallic Mineral sought after for its cubic structure.", sellprice: [300, 390], location: "Magma Geode, Omni Geode, Black Slime", used: "None"),
    
    MineralsData(image: "Baryte_Icon", name: "Baryte",  info: "The best specimens resemble a desert rose.", sellprice: [50, 65], location: "Magma Geode, Omni Geode", used: "None"),
    
    MineralsData(image: "Aerinite_Icon", name: "Aerinite",  info: "These crystals are curiously light.", sellprice: [125, 162], location: "Frozen Geode, Omni Geode", used: "None"),
    
    MineralsData(image: "Calcite_Icon", name: "Calcite",  info: "    This yellow crystal is speckled with shimmering nodules.", sellprice: [75, 97], location: "Geode, Omni Geode", used: "None")

]
#endif
