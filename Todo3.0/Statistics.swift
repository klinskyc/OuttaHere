//
//  Statistics.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 9/24/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import Foundation

struct Statistics
{

//    let hr: Int
//    let rbi: Int
//    let hits: Int
//    let double: Int
//    let triple: Int
//    let sb: Int
//    let bb: Int
//    let so: Int
//    let slugging: Double
//    let onbase: Double
//    let avg: Double
    let hitterStats: Dictionary<String,Double>;
    //let pitcherStats: Dictionary<String,Double>;
    init(hitterStats: Dictionary<String,Double>)
    {
        self.hitterStats = hitterStats;
    }
}