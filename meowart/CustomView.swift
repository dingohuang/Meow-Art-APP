//
//  CustomView.swift
//  meowart
//
//  Created by dingo on 2016/5/4.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//

import UIKit

class CustomView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var array:[String] = []
    
    var name : AnyObject? {
        get {
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
        set {
            NSUserDefaults.standardUserDefaults().setObject(newValue!, forKey: "name")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    

    override func viewDidLoad() {
        
        array = ["ServicesImage9", "ServicesImage10", "ServicesImage11"]
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.ImageView.image = UIImage(named: array[indexPath.row])
        
        //cell.ImageView.layer.cornerRadius = cell.ImageView.frame.size.width / 2
        //cell.ImageView.clipsToBounds = true
        
        cell.ImageView.layer.borderWidth = 2.0
        cell.ImageView.layer.borderColor = UIColor.whiteColor().CGColor
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        name = array [indexPath.row]
    }

}
