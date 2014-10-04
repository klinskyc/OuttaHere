//
//  MasterViewController.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 9/22/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let csvURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("hitters", ofType: "csv")!)
        let csv = CSV(contentsOfURL: csvURL)
        let headers = csv.headers
        var correctDic = [String: Double]()
        for index in 1...csv.rows.count-1
        {
        let initDic = csv.rows[index]
        for (stat, val) in initDic {
            correctDic[stat] = NSString(string: val).doubleValue
        }
            var testPlayer = Player(age: correctDic["Age"]!, team: initDic["Tm"]!, stats: correctDic)
            
        RosterStore.sharedInstance.add(initDic["Batter"]!,player: testPlayer)

        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

    



}

