//
//  ViewController.swift
//  ZachApp
//
//  Created by Michael Litman on 2/8/17.
//  Copyright © 2017 Michael Litman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed()
    {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MyCollectionCVC") as! MyCollectionCVC
        //do anything with vc prior to showing it on the screen here
        self.present(vc, animated: true) { 
            print("this happens after the screen presents")
        }
    }
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?)
     {
        print("DO EXTRA STUFF HERE!!!!");
     }
    

}
