//
//  Choice.swift
//  Assignment4
//
//  Created by Hronek Joseph on 2/12/23.
//

import Foundation

struct Choice {
    var choice_description : String
    var choice_one : String
    var choice_two : String
    var next_index_ch1 : Int
    var next_index_ch2 : Int
    
    init(_ ch_desc: String, _ ch_one:String, _ ch_two: String, _ nxt_ind_ch1: Int, _ nxt_ind_ch2: Int) {
        choice_description = ch_desc
        choice_one = ch_one
        choice_two = ch_two
        next_index_ch1 = nxt_ind_ch1
        next_index_ch2 = nxt_ind_ch2
    }
}
