//
//  Task.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 9/22/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import Foundation


struct Task {
    let title: String
    let notes: String
    
    init(title: String, notes: String)
    {
        self.title = title;
        self.notes = notes;
    }
}
