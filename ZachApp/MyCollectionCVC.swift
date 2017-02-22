//
//  MyCollectionCVC.swift
//  ZachApp
//
//  Created by Michael Litman on 2/8/17.
//  Copyright © 2017 Michael Litman. All rights reserved.
//

import UIKit

class MyCollectionCVC: UICollectionViewController
{
    var myContainer: CollectionViewContainerVC!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let theLayout = CustomFlowLayout()
        theLayout.numCols = 3
        self.collectionView?.collectionViewLayout = theLayout
        self.collectionView?.backgroundColor = UIColor.white
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

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
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of items
        return 500
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCustomCell
    
        cell.myIndexPath = indexPath.row
        
        // Configure the cell
        if(Core.vals[indexPath.row] != nil)
        {
            cell.theLabel.text = Core.vals[indexPath.row]
        }
        else
        {
            if(indexPath.row % 2 == 0)
            {
                Core.vals[indexPath.row] = "blah"
            }
            else
            {
                Core.vals[indexPath.row] = "woot"
            }
            cell.theLabel.text = Core.vals[indexPath.row]
        }
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        //self.myContainer.updateClicks()
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "MyButtonClicks"), object: nil)
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
