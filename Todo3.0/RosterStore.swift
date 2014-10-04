//
//  RosterStore.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 10/1/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import Foundation

class RosterStore {
    class var sharedInstance: RosterStore {
    struct Static {
        static let instance = RosterStore()
        }
        return Static.instance }
    var players = [String: Player]()
    
    func add(name:String,player: Player) {
        players[name] = player
    }
    
   
    func getAllNames() -> [String]
    {
        var nameArray = [String]()
        for name in players.keys {
            nameArray.append(name)
        }
        return nameArray
        
    }
    func removeplayerAtIndex(name: String)
    {
        players.removeValueForKey(name)
    }
    func get(name: String) -> Player {
        return players[name]!
    }
    
    var count: Int {
        return players.count
}
}