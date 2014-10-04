//
//  TaskStore.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 9/22/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
    struct Static {
        static let instance = TaskStore()
        }
        return Static.instance }
    var tasks: [Task] = []
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func removeTaskAtIndex(index: Int)
    {
        tasks.removeAtIndex(index)
    }
    func get(index: Int) -> Task {
        return tasks[index]
    }
    
    var count: Int {
            return tasks.count
    }
}
