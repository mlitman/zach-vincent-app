//
//  BestHandsTVC.swift
//  ZachApp
//
//  Created by Michael Litman on 3/7/17.
//  Copyright © 2017 Michael Litman. All rights reserved.
//

import UIKit

class BestHandsTVC: UITableViewController
{
    var scores = [Int]()
    var hands = [String]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        for i in 0...20
        {
            scores.append(Int(arc4random()) % 100)
            hands.append("Hand \(i)")
        }
        self.insertionSort()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    func insertionSort()
    {
        var follower = -1
        var tempInt = -1
        var tempString = ""
        for currStart in 1..<self.scores.count
        {
            follower = currStart
            while(follower >= 1 && self.scores[follower] > self.scores[follower-1])
            {
                tempInt = self.scores[follower-1]
                tempString = self.hands[follower-1]
                self.scores[follower-1] = self.scores[follower]
                self.hands[follower-1] = self.hands[follower]
                self.scores[follower] = tempInt
                self.hands[follower] = tempString
                follower -= 1
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.scores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = self.hands[indexPath.row]
        cell.detailTextLabel?.text = "\(self.scores[indexPath.row])"
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
