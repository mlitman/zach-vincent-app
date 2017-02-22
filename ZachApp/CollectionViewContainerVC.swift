//
//  CollectionViewContainerVC.swift
//  ZachApp
//
//  Created by Michael Litman on 2/22/17.
//  Copyright © 2017 Michael Litman. All rights reserved.
//

import UIKit

class CollectionViewContainerVC: UIViewController
{
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    var cv: MyCollectionCVC!
    var clickCount = 0.0
    var numtiles = 13
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myButton.alpha = 0.0
        NotificationCenter.default.addObserver(self, selector: #selector(updateClicks), name: NSNotification.Name(rawValue: "MyButtonClicks"), object: nil)
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool)
    {
        let alert = UIAlertController(title: "Number of Tiles", message: "How many tiles do you want?", preferredStyle: .actionSheet)
        
        let action13 = UIAlertAction(title: "13 Tiles", style: .default) { (action: UIAlertAction) in
            self.numtiles = 13
        }
        
        let action14 = UIAlertAction(title: "14 Tiles", style: .default) { (action: UIAlertAction) in
            self.numtiles = 14
        }
        
        alert.addAction(action13)
        alert.addAction(action14)
        self.present(alert, animated: false, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateClicks()
    {
        clickCount += 1
        self.myLabel.text = "\(self.clickCount)"
        self.myButton.alpha = CGFloat(clickCount.divided(by: 14.0))
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier != nil && segue.identifier == "collectionViewEmbed")
        {
            self.cv = segue.destination as! MyCollectionCVC
            self.cv.myContainer = self
        }
    }
    

}
