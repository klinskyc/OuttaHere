//
//  AddTaskViewController.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 9/23/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
  
    @IBOutlet weak var titleField: UITextField!

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var notesField: UITextField!
    @IBOutlet var testButton: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if segue.identifier == "dismissAndSave" {
            let task = Task(title: titleField.text, notes: notesField.text)
            TaskStore.sharedInstance.add(task) }
    }
   
    @IBAction func playBall(sender: AnyObject) {
        let randNum = Int(arc4random_uniform(11));
        println(randNum);
        if randNum < 5 {
            label.text = "1";
        }
        else
        {
            label.text = "2";
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
