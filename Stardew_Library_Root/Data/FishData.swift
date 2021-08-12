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

    ItemsFishData(image: "Pufferfish_Icon", name: "Pufferfish",  info: "Inflates when threatened.", location: "Ocean, Ginger Island oceans", season: "Summer (All Seasons on Ginger Island)", time: "12pm – 4pm", sellprice: [200, 600], bundles: "Specialty Fish Bundle", behaviour: "80 floater", weather: "Sun"),
    
    ItemsFishData(image: "Anchovy_Icon", name: "Anchovy",  info: "A small silver fish found in the ocean.", location: "Ocean", season: "Spring, Fall", time: "Anytime", sellprice: [30, 90], bundles: "None", behaviour: "30 dart", weather: "Any"),
    
    ItemsFishData(image: "Tuna_Icon", name: "Tuna",  info: "A large fish that lives in the ocean.", location: "Ocean, Ginger Island oceans", season: "Summer, Winter (All Seasons on Ginger Island)", time: "6am – 7pm", sellprice: [100, 300], bundles: "Ocean Fish Bundle", behaviour: "70 smooth", weather: "Any"),
    
    ItemsFishData(image: "Sardine_Icon", name: "Sardine",  info: "A large fish that lives in the ocean.", location: "Ocean", season: " Spring, Fall, Winter", time: "6am – 7pm", sellprice: [40, 120], bundles: "Ocean Fish Bundle", behaviour: "    30 dart", weather: "Any"),
    
    ItemsFishData(image: "Bream_Icon", name: "Bream",  info: "A fairly common river fish that becomes active at night.", location: "River (Town+Forest)", season: "All", time: "6pm – 2am", sellprice: [45, 135], bundles: "Night Fishing Bundle", behaviour: "35 smooth", weather: "Any"),
    
    ItemsFishData(image: "Largemouth_Bass", name: "Largemouth Bass",  info: "A popular fish that lives in lakes.", location: "Mountain Lake", season: "All", time: "6am – 7pm", sellprice: [100, 300], bundles: "Lake Fish Bundle", behaviour: "50 mixed", weather: "Any"),
    
    ItemsFishData(image: "Smallmouth_Bass", name: "Smallmouth Bass",  info: "A freshwater fish that is very sensitive to pollution.", location: "River (Town), Forest Pond", season: "Spring, Fall", time: "Anytime", sellprice: [50, 150], bundles: "None", behaviour: "28 mixed", weather: "Any"),
    
    ItemsFishData(image: "Rainbow_Trout", name: "Rainbow Trout",  info: "A freshwater trout with colorful markings.", location: "River (Town+Forest), Mountain Lake", season: "Summer", time: "6am – 7pm", sellprice: [65, 195], bundles: "None", behaviour: "45 mixed", weather: "Sun"),
    
    ItemsFishData(image: "Salmon_Icon", name: "Salmon",  info: "Swims upstream to lay its eggs.", location: "River (Town+Forest)", season: "Fall", time: "6am – 7pm", sellprice: [75, 225], bundles: "None", behaviour: "50 mixed", weather: "Any"),
    
    ItemsFishData(image: "Walleye_Icon", name: "Walleye",  info: "A freshwater fish caught at night.", location: "River (Town+Forest), Forest Pond, Mountain Lake", season: "Fall, Winter (With Rain Totem)", time: "12pm – 2am", sellprice: [105, 315], bundles: "Night Fishing Bundle", behaviour: "45 smooth", weather: "Rain")
    

]
#endif
