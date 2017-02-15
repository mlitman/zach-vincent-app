//
//  MyCustomCell.swift
//  ZachApp
//
//  Created by Michael Litman on 2/8/17.
//  Copyright © 2017 Michael Litman. All rights reserved.
//

import UIKit

class MyCustomCell: UICollectionViewCell
{
    @IBOutlet weak var theLabel: UILabel!
    var myIndexPath = -1
    
    @IBAction func buttonClicked()
    {
        print("You clicked me!!!!")
        self.theLabel.text = "Clicked"
        Core.vals[myIndexPath] = "Clicked"
    }
}
