//
//  ViewController.swift
//  ZachApp
//
//  Created by Michael Litman on 2/8/17.
//  Copyright © 2017 Michael Litman. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var label: UILabel!
    var clickCount = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(updateClicks), name: NSNotification.Name(rawValue: "MyButtonClicks"), object: nil)
        
        self.button1.maskAsCircle()
        self.button2.maskWithBorder(10, color: UIColor.blue)
        
        //self.button2.frame = CGRect(x: 10, y: 10, width: self.button2.frame.size.width, height: self.button2.frame.size.height)
        
        self.button2.setPosition(10, y: 10)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func updateClicks()
    {
        clickCount += 1
        self.label.text = "\(clickCount)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed()
    {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CollectionViewContainerVC") as! CollectionViewContainerVC
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

