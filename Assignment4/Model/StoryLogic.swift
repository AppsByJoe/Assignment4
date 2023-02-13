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
                Choice("Your plane has crashed in Alaskan wilderness. It is cold, snowy, and windy.",
                         "Scavenge wreckage for supplies.",
                         "Seek Shelter in nearby cave.",
                         1,
                         2),
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
