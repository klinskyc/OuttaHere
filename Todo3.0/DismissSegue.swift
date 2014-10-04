//
//  DismissSegue.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 9/22/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    @IBOutlet weak var titleField: UITextField!
    
    @IBOutlet weak var notesField: UITextField!
    
    
    override func perform() {
        
        (sourceViewController.presentingViewController as UIViewController!).dismissViewControllerAnimated(true, completion: nil)
    }
}

