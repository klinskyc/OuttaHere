//
//  Player.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 9/24/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import Foundation

struct Player: Printable
{
    let age: Double
    let team: String
    let stats: Dictionary<String,Double>
    var pos: String
        {
       return posistionFinder(stats)
    }
    var description: String {
        return "MyType: \(age)"
    }
    init(age: Double,team: String, stats: Dictionary<String,Double>)
    {
        self.age = age;
        self.team = team;
        self.stats = stats;
    }
    
    func posistionFinder(stats: Dictionary<String,Double>) -> String{
        let posArray = ["C": stats["C"],"1B": stats["1B"],"2B": stats["2B"],"3B": stats["3B"],"SS": stats["SS"],"LF": stats["LF"],"CF": stats["CF"],"RF": stats["RF"],"DH": stats["DH"]];
        var maxNumber = stats["C"]
        var maxIndex = "C";
        
        for (posistion, val) in posArray {
            
                if(val > maxNumber)
                {
                    maxNumber = val
                    maxIndex = posistion
                }
            }
            return maxIndex
    }

}