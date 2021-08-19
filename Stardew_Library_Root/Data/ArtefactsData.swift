//
//  ArtefactsData.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct ArtefactsData: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var info: String
    var location: String
    var sellprice: [Int]
    var used: String
}

#if DEBUG

let testArtefactsData = [

    ArtefactsData(image: "Dwarf_Scroll_I", name: "Dwarf Scroll I",  info: "A yellowed scroll of parchment filled with dwarven script. This one's tied with a red bow.", location: "Tilling in Mines/Skull Cavern (any floor) (0.16%), Several monsters (0.5% each)",  sellprice: [1], used: "Fish Pond (Quest)"),
    
    ArtefactsData(image: "Dwarf_Scroll_II", name: "Dwarf Scroll II I",  info: "A yellowed scroll of parchment filled with dwarven script. This one's tied with a green ribbon.", location: "Tilling in Mines (floor 1-40) (0.1%), Ghost (Mines floor 50-90), Frost Bat (Mines floor 40-65), Dust Sprite (Mines floor 40-79), Blue Slime",  sellprice: [1], used: "Fish Pond (Quest)"),
    
    ArtefactsData(image: "Dwarf_Scroll_III", name: "Dwarf Scroll III",  info: "A yellowed scroll of parchment filled with dwarven script. This one's tied with a blue rope.", location: "Several monsters drop",  sellprice: [1], used: "Fish Pond (Quest)"),
    
    ArtefactsData(image: "Dwarf_Scroll_IV", name: "Dwarf Scroll IV",  info: "A yellowed scroll of parchment filled with dwarven script. This one's tied with a golden chain.", location: "Any Monster (other than Serpent, Skeleton, Wilderness Golem, Carbon Ghost, Iridium Bat, Iridium Crab, and Haunted Skull), Tilling in Mines (floor 80+) (0.2%)",  sellprice: [1], used: "None"),
    
    ArtefactsData(image: "Chipped_Amphora", name: "Chipped Amphora",  info: "An ancient vessel made of ceramic material. Used to transport both dry and wet goods.", location: "Town (3%), Artifact Trove",  sellprice: [40], used: "None"),
    
    ArtefactsData(image: "Arrowhead_Icon", name: "Arrowhead",  info: "A crudely fashioned point used for hunting.", location: "Mountain (1.6%), Forest (1.6%), Bus Stop (1.6%), Artifact Trove",  sellprice: [40], used: "None"),
    
    ArtefactsData(image: "Ancient_Doll", name: "Ancient Doll",  info: "An ancient doll covered in grime. This doll may have been used as a toy, a decoration, or a prop in some kind of ritual.", location: "Mountain (3%), Forest (2.4%), Bus Stop (2.4%), Town (0.8%), Fishing Chest (0.8-0.9%[2]), Feast of the Winter Star, Artifact Trove",  sellprice: [60], used: "Children's Bundle"),
    
    ArtefactsData(image: "Elvish_Jewelry", name: "Elvish Jewelry",  info: "Dirty but still beautiful. On the side is a flowing script thought by some to be the ancient language of the elves. No Elvish bones have ever been found.", location: "Forest (0.8%), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [200], used: "None"),
    
    ArtefactsData(image: "Chewing_Stick", name: "Chewing Stick",  info: "Ancient people chewed on these to keep their teeth clean.", location: "Mountain (1.5%), Forest (1.5%), Town (0.8%), Fishing Chest (0.8-0.9%[2]), Duggy drop (2%), Artifact Trove",  sellprice: [50], used: "None"),
    
    ArtefactsData(image: "Ornamental_Fan", name: "Ornamental Fan",  info: "This exquisute fan most likely belonged to a noblewoman. Historians believe that the valley was a popular sixth-era vacation spot for the wealthy.", location: "Beach (1.6%), Forest (0.7%), Town (0.6%), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [300], used: "None"),
    
    
    ////
    
    ArtefactsData(image: "Dinosaur_Egg", name: "Dinosaur Egg",  info: "A giant dino egg... The entire shell is still intact!", location: "Mountain (0.6%), Fishing Chest (0.8-0.9%[2]), Foraged on prehistoric floors of the Skull Cavern,  Pepper Rex drop (10%)",  sellprice: [350], used: "Incubator (Coop), Dinosaur Mayonnaise (Recipe)"),
    
    ArtefactsData(image: "Rare_Disc", name: "Rare Disc",  info: "A heavy black disc studded with peculiar red stones. When you hold it, you're overwhelmed with a feeling of dread.", location: "Fishing Chest (0.8-0.9%[2]), Drop from Bats, Shadow Brute, or Shadow Shaman, Artifact Trove",  sellprice: [300], used: "None"),
    
    ArtefactsData(image: "Ancient_Sword", name: "Ancient Sword",  info: "It's the remains of an ancient sword. Most of the blade has turned to rust, but the hilt is very finely crafted.", location: "Forest (0.7%), Mountain (0.6%), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [100], used: "None"),
    
    ArtefactsData(image: "Rusty_Spoon", name: "Rusty Spoon",  info: "A plain old spoon, probably ten years old. Not very interesting.", location: "Town (4% + 6-11%[3]), Fishing Chest (0.8-0.9%[2]), Tilling in Mines/Skull Cavern (any floor) (0.16%), Artifact Trove",  sellprice: [25], used: "None"),
    
    ArtefactsData(image: "Rusty_Spur", name: "Rusty Spur",  info: "An old spur that was once attached to a cowboy's boot. People must have been raising animals in this area for many generations.", location: "Farm (10%), Tilling in Mines/Skull Cavern (0.16%), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [25], used: "None"),
    
    ArtefactsData(image: "Rusty_Cog", name: "Rusty Cog",  info: "A well preserved cog that must have been part of some ancient machine. This could be dwarven technology.", location: "Mountain (4%), Tilling in Mines/Skull Cavern (any floor), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [25], used: "None"),
    
    ArtefactsData(image: "Chicken_Statue", name: "Chicken Statue",  info: "It's a statue of a chicken on a bronze base. The ancient people of this area must have been very fond of chickens.", location: "Farm (9%), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [50], used: "None"),
    
    ArtefactsData(image: "Ancient_Seed", name: "Ancient Seed",  info: "It's a dry old seed from some ancient plant. By all appearances it's long since dead...", location: "Forest (0.7%), Mountain (0.7%), Fishing Chest (0.8-0.9%[2]),  Monster drop (Bug, Cave Fly, Grub, Mutant Fly, Mutant Grub: 0.5%), Artifact Trove",  sellprice: [5], used: "Ancient Seeds (Recipe)"),
    
    ArtefactsData(image: "Prehistoric_Tool", name: "Prehistoric Tool",  info: "Some kind of gnarly old digging tool.", location: "Bus Stop (3%),Forest (2.1%), Mountain (2%), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [50], used: "None"),
    
    ArtefactsData(image: "Dried_Starfish", name: "Dried Starfish",  info: "A starfish from the primordial ocean. It's an unusually pristine specimen!", location: "Beach (8%), Fishing Chest (0.8-0.9%[2]), Artifact Trove",  sellprice: [40], used: "Fish Pond (Quest)")

]
#endif
