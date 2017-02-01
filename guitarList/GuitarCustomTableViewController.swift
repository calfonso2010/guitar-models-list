//
//  GuitarCustomTableViewController.swift
//  guitarList
//
//  Created by Carlos Alfonso on 1/18/17.
//  Copyright © 2017 Carlos Alfonso. All rights reserved.
//

import UIKit

class GuitarCustomTableViewController: UITableViewController {
    let guitarNumberOne=Guitar(name: "Gibson Les Paul",photo: nil,subtitle: "A pretty guitar",date: "01/01/1959",author: "oldGuy")
    let guitarNumberTwo=Guitar(name: "Fender Stratocaster",photo: nil,subtitle: "Also a pretty guitar",date: "01/01/1963",author: "Leo Fender")
    var itemArray=[Guitar(name: "Gibson Les Paul",photo: nil,subtitle: "A pretty guitar",date: "01/01/1959",author: "oldGuy"),Guitar(name: "Fender Stratocaster",photo: nil,subtitle: "Also a pretty guitar",date: "01/01/1963",author: "Leo Fender")]
    
    let cellIdentifer="guitarCellReuseIdentifer"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifer, forIndexPath: indexPath) as? GuitarCustomViewCell else{
            fatalError("error")
        }
        

        // Configure the cell...
        cell.guitarTitleLabel.text=itemArray[indexPath.item].name
        cell.guitarInfoLabel.text=itemArray[indexPath.item].author
        return cell
    }
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if segue?.identifier=="guitarsegue"{
            let detailViewController=segue?.destinationViewController as! GuitarDetailedViewController
            let indexPath=self.tableView.indexPathForSelectedRow
            detailViewController.detailGuitar=self.itemArray[indexPath!.row] 
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
