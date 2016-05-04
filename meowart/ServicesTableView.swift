//
//  ServicesTableView.swift
//  meowart
//
//  Created by dingo on 2016/4/14.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//

import UIKit

class ServicesTableView: UITableViewController {
    
    let ServicesTitle = ["肉肉(Roro)","恰比(Chubby)","皮可洛(Picolo)","小布(Small Bu)","肥溜(Fat Liu)","雙貓牌(Two Cats)","小白(Small White)","恰恰(Cha Cha)"]
    
    let ServicesImage = ["ServicesImage1","ServicesImage2","ServicesImage3","ServicesImage4","ServicesImage5","ServicesImage6","ServicesImage7","ServicesImage8"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 100
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage.png")!)
        
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
        return ServicesTitle.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Configure the cell...

        let cell: ServicesTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! ServicesTableViewCell
        
        cell.CellLabel.text = ServicesTitle[indexPath.row];
        
        let imagename = UIImage(named: ServicesImage[indexPath.row])
        cell.CellImage.image = imagename
        
        
        cell.CellImage.layer.cornerRadius = cell.CellImage.frame.width / 2
        cell.CellImage.clipsToBounds = true
        
        cell.CellImage.layer.borderWidth = 2.0
        cell.CellImage.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        return cell
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

 
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                
        
        
        if (segue.identifier == "DetailView") {
            
            let VC = segue.destinationViewController as! ServicesDetail
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let Title = ServicesTitle[indexPath.row] as String
                VC.SentData1 = Title
                
                let Image = ServicesImage[indexPath.row] as String
                VC.SentData2 = Image

                
            }
            
        }
        

    }

    
    
    
    

}
