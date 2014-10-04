//
//  PlayerSelectTableViewCell.swift
//  Todo3.0
//
//  Created by CavanKlinsky on 10/2/14.
//  Copyright (c) 2014 CJK Webdesign. All rights reserved.
//

import UIKit

class PlayerSelectTableViewCell: UITableViewCell {

    @IBOutlet  var posLabel: UILabel!
    @IBOutlet  var hrLabel: UILabel!
    @IBOutlet  var avgLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
            }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    func setLabels(hr:Int,avg:Double,pos:String)
//    {
//        posLabel.text=
//    }
  

}
