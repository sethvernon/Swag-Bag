        //
//  swagTableViewController.swift
//  SwagBag
//
//  Created by Seth on 5/30/15.
//  Copyright (c) 2015 SETH. All rights reserved.
//

import UIKit
        

class swagTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate
{

    
    
    var swagArray = Swag().jsonArray
        
        {
        didSet {
            tableView.reloadData()
        }
    }
 
    var testArray = NSArray()

    var count = Swag().totalCount
        {
            didSet {
        tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
//        Swag().getJSONData()
        Swag().httpGET()
        
        
        
//        Swag().httpGET_SWAG()
        
//        println(self.swagArray)
        
        testArray = ["1", "2", "3"]
        
        
//        self.swagArray = Swag().jsonArray
        
//        dispatch_async(dispatch_get_main_queue(), { () -> Void in
        
            
            println(self.swagArray)


//        })
    
    
    }

  
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        return testArray.count
//        return Swag().jsonArray.count

        
        return swagArray.count
        

        
    }
    
    
    private struct Storyboard {
        static let CellReuseidentifier = "SwagCell"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Storyboard.CellReuseidentifier, forIndexPath: indexPath) as! UITableViewCell

        if let resourse = swagArray[indexPath.row]["resource"] as? NSDictionary {
            if let fields = resourse["fields"] as? NSDictionary {
                
            }
        }
        
        
        cell.textLabel?.text = swagArray[indexPath.row].objectForKey("reseource")?.objectForKey("fields")?.objectForKey("name") as? String

        
        
        
        return cell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
