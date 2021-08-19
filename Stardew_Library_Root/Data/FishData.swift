//
//  FishData.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct ItemsFishData: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var location: String
    var season: String
    var time: String
    var sellprice: [Int]
    var bundles: String
    var behaviour: String
    var weather: String
}

#if DEBUG

let testFishData = [

    ItemsFishData(image: "Pufferfish_Icon", name: "Pufferfish",  info: "Inflates when threatened.", location: "Ocean, Ginger Island oceans", season: "Summer", time: "12pm – 4pm", sellprice: [200, 600], bundles: "Specialty Fish Bundle", behaviour: "80 floater", weather: "Sun"),
    
    ItemsFishData(image: "Anchovy_Icon", name: "Anchovy",  info: "A small silver fish found in the ocean.", location: "Ocean", season: "Spring, Fall", time: "Anytime", sellprice: [30, 90], bundles: "None", behaviour: "30 dart", weather: "Any"),
    
    ItemsFishData(image: "Tuna_Icon", name: "Tuna",  info: "A large fish that lives in the ocean.", location: "Ocean, Ginger Island oceans", season: "Summer, Winter", time: "6am – 7pm", sellprice: [100, 300], bundles: "Ocean Fish Bundle", behaviour: "70 smooth", weather: "Any"),
    
    ItemsFishData(image: "Sardine_Icon", name: "Sardine",  info: "A large fish that lives in the ocean.", location: "Ocean", season: " Spring, Fall, Winter", time: "6am – 7pm", sellprice: [40, 120], bundles: "Ocean Fish Bundle", behaviour: "30 dart", weather: "Any"),
    
    ItemsFishData(image: "Bream_Icon", name: "Bream",  info: "A fairly common river fish that becomes active at night.", location: "River (Town+Forest)", season: "All", time: "6pm – 2am", sellprice: [45, 135], bundles: "Night Fishing Bundle", behaviour: "35 smooth", weather: "Any"),
    
    ItemsFishData(image: "Largemouth_Bass", name: "Largemouth Bass",  info: "A popular fish that lives in lakes.", location: "Mountain Lake", season: "All", time: "6am – 7pm", sellprice: [100, 300], bundles: "Lake Fish Bundle", behaviour: "50 mixed", weather: "Any"),
    
    ItemsFishData(image: "Smallmouth_Bass", name: "Smallmouth Bass",  info: "A freshwater fish that is very sensitive to pollution.", location: "River (Town), Forest Pond", season: "Spring, Fall", time: "Anytime", sellprice: [50, 150], bundles: "None", behaviour: "28 mixed", weather: "Any"),
    
    ItemsFishData(image: "Rainbow_Trout", name: "Rainbow Trout",  info: "A freshwater trout with colorful markings.", location: "River (Town+Forest), Mountain Lake", season: "Summer", time: "6am – 7pm", sellprice: [65, 195], bundles: "None", behaviour: "45 mixed", weather: "Sun"),
    
    ItemsFishData(image: "Salmon_Icon", name: "Salmon",  info: "Swims upstream to lay its eggs.", location: "River (Town+Forest)", season: "Fall", time: "6am – 7pm", sellprice: [75, 225], bundles: "None", behaviour: "50 mixed", weather: "Any"),
    
    ItemsFishData(image: "Walleye_Icon", name: "Walleye",  info: "A freshwater fish caught at night.", location: "River (Town+Forest), Forest Pond, Mountain Lake", season: "Fall, Winter", time: "12pm – 2am", sellprice: [105, 315], bundles: "Night Fishing Bundle", behaviour: "45 smooth", weather: "Rain"),
    
    
    ///////
    
    ItemsFishData(image: "Perch_Icon", name: "Perch",  info: "A freshwater fish of the winter.", location: "Mountain Lake, Secret Woods Pond, The Sewers", season: "All", time: "Anytime", sellprice: [55, 165], bundles: "None", behaviour: "35 dart", weather: "Any"),
    
    ItemsFishData(image: "Carp_Icon", name: "Carp",  info: "A common pond fish.", location: "Mountain Lake, Secret Woods Pond, The Sewers", season: "All", time: "Anytime", sellprice: [30, 90], bundles: "Lake Fish Bundle, Carp Surprise", behaviour: "15 mixed", weather: "Any"),
    
    ItemsFishData(image: "Catfish_Icon", name: "Catfish",  info: "An uncommon fish found in streams.", location: "River (Town+Forest), Secret Woods Pond, Witch's Swamp", season: "Spring, Fall, (Spring & Summer in Secret Woods Pond)", time: "6am – 12am", sellprice: [200, 600], bundles: "River Fish Bundle", behaviour: "75 mixed", weather: "Rain"),
    
    ItemsFishData(image: "Pike_Icon", name: "Pike",  info: "A freshwater fish that's difficult to catch.", location: "River (Town+Forest, Forest Pond", season: " Summer, Winter", time: "6am – 12am", sellprice: [100, 300], bundles: "None", behaviour: "60 dart", weather: "Any"),
    
    ItemsFishData(image: "Sunfish_Icon", name: "Sunfish",  info: "A common river fish.", location: "River (Town+Forest)", season: "Spring, Summer", time: "6am – 7pm", sellprice: [30, 90], bundles: "River Fish Bundle, Baked Fish", behaviour: "30 mixed", weather: "Sun, Wind"),
    
    ItemsFishData(image: "Red_Mullet", name: "Red Mullet",  info: "Long ago these were kept as pets.", location: "Ocean", season: "Summer, Winter", time: "6am – 7pm", sellprice: [75, 225], bundles: "None", behaviour: "55 smooth", weather: "Any"),
    
    ItemsFishData(image: "Herring_Icon", name: "Herring Icon",  info: "A common ocean fish.", location: "Ocean", season: "Spring, Winter", time: "Anytime", sellprice: [30, 90], bundles: "None", behaviour: "25 dart", weather: "Any"),
    
    ItemsFishData(image: "Eel_Icon", name: "Eel",  info: "A long, slippery little fish.", location: "Ocean", season: "Spring, Fall", time: "4pm - 2am", sellprice: [85, 255], bundles: "Night Fishing Bundle, Fried Eel, Spicy Eel", behaviour: "70 smooth", weather: "Rain"),
    
    ItemsFishData(image: "Octopus_Icon", name: "Octopus",  info: "A mysterious and intelligent creature.", location: "Ocean", season: "Summer", time: "6am – 1pm", sellprice: [150, 450], bundles: "None", behaviour: "95 sinker", weather: "Any"),
    
    ItemsFishData(image: "Red_Snapper", name: "Red Snapper",  info: "A popular fish with a nice red color.", location: "Ocean", season: "Summer, Fall, Winter with Rain Totem", time: "6am – 7pm", sellprice: [50, 150], bundles: "Ocean Fish Bundle", behaviour: "40 mixed", weather: "Rain")
    

]
#endif
