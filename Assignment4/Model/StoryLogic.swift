//
//  StoryLogic.swift
//  Assignment4
//
//  Created by Hronek Joseph on 2/12/23.
//

import Foundation

struct StoryLogic {
    
    var choiceIndex : Int = 0
    
    let choice = [
                Choice("Your plane has crashed in the Alaskan wilderness. It is cold, snowy, and windy.  You are injured and freezing.",
                         "Scavenge wreckage for supplies.",
                         "Seek Shelter in nearby cave.",
                         1,
                         2),
                Choice("You fill your pockets with water bottles, snacks, and a first aid kit.  The weather worsens and you can barely see.  Strangely, you are starting to feel warmer and very tired.",
                         "Dig a snow shelter using plane parts.",
                         "Walk in the direction of that cave you saw earlier.",
                         3,
                         4),
                Choice("You make it into the cave just as it turns into a blizzard outside.  As you venture deeper into the cave, you stumble across animal bones.",
                         "Gather debris for insulation so you can rest on the cave floor.",
                         "Leave to find a bone-free cave.",
                         5,
                         6),
                Choice("After you curl up in your snow shelter, the blizzard subsides.  Your clothes are soaking wet from the snow.  You notice sticks and branches around the crash site.",
                         "Gather fire-building materials and attempt to start a fire.",
                         "Stay curled up in your snow shelter.",
                         7,
                         8),
                Choice("You keep walking until the blizzard subsides.  You don't see the cave, however you do see an elevated hunter's blind. This could help break the wind and shelter you from snow.",
                         "Climb into the hunter's blind to rest.",
                         "Keep walking and searching for that cave.",
                         9,
                         10),
                Choice("Just as you start to fall asleep, you see a big brown bear at the cave entrance.",
                         "Run.",
                         "Play dead.",
                         11,
                         12),
                Choice("You keep walking until the blizzard subsides.  You don't find another cave, however you do find an elevated hunter's blind. This could help break the wind and shelter you from snow.",
                         "Climb into the hunter's blind to rest.",
                         "Keep walking and searching for a nice, bone-free cave.",
                         13,
                         14),
                Choice("All the wood you gathered is wet. Even with your lighter, you fail to start a fire.  You develop severe frostbite.",
                         "Reset.",
                         "Reset.",
                         0,
                         0),
                Choice("You fall asleep shivering. To your surprise, you survive the night.  Can you survive another?",
                         "Reset.",
                         "Reset.",
                         0,
                         0),
                Choice("You curl up in a corner, and fall asleep.  When you awake, the birds are chirping and the sun is rising. You survive the night.  Can you survive another?",
                         "Reset.",
                         "Reset.",
                         0,
                         0),
                Choice("You keep walking, but can't find a cave.  While walking down a hill, you trip and hurt your ankle.  You lean against a pine tree as the sun sets...",
                         "Reset.",
                         "Reset.",
                         0,
                         0),
                Choice("You try to run past the bear. This strategy doesn't work. You are now bear food.",
                         "Reset.",
                         "Reset.",
                         0,
                         0),
                Choice("Summoning everything you learned in high school drama club, you fall to the ground and pretend to play dead.  This strategy doesn't work.  You are now bear food.",
                         "Reset.",
                         "Reset.",
                         0,
                         0),
                Choice("You curl up in a corner, and fall asleep.  When you awake, the birds are chirping and the sun is rising. You survive the night.  Can you survive another?",
                         "Reset.",
                         "Reset.",
                         0,
                         0),
                Choice("You keep walking, but can't find a cave.  While walking down a hill, you trip and hurt your ankle.  You lean against a pine tree as the sun sets...",
                         "Reset.",
                         "Reset.",
                         0,
                         0)
            ]
    

    mutating func getNextIndex(_ userChoice : String) {
        if userChoice == choice[choiceIndex].choice_one {
            choiceIndex = choice[choiceIndex].next_index_ch1
        } else if userChoice == choice[choiceIndex].choice_two {
            choiceIndex = choice[choiceIndex].next_index_ch2
        }
    }
    
    func getNextChoice() -> String {
        return choice[choiceIndex].choice_description
    }
    
    func getChoiceOne() -> String {
        return choice[choiceIndex].choice_one
    }
    
    func getChoiceTwo() -> String {
        return choice[choiceIndex].choice_two
    }
}
