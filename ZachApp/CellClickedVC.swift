//
//  CellClickedVC.swift
//  ZachApp
//
//  Created by Michael Litman on 2/15/17.
//  Copyright © 2017 Michael Litman. All rights reserved.
//

import UIKit

class CellClickedVC: UIViewController
{
    @IBOutlet weak var myLabel: UILabel!
    var myIndexPath = -1
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.myLabel.text = "Woot \(self.myIndexPath)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
