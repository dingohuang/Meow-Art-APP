//
//  CustomDetail.swift
//  meowart
//
//  Created by dingo on 2016/5/4.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//

import UIKit
import Social

class CustomDetail: UIViewController {
    
    
    @IBOutlet var DetailImageView: UIImageView!
    @IBOutlet var DetailLabel: UILabel!
    @IBOutlet var DetailText: UITextView!
    @IBOutlet var ShareFB2: UIButton!
    
    var name : AnyObject? {
        get {
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
    }
    
    
    override func viewDidLoad() {
        
        ShareFB2.layer.cornerRadius = 9.0
        
        DetailImageView.image = UIImage(named: name as! String)
        
        
        if DetailImageView.image == UIImage(named: "ServicesImage9") {
            DetailLabel.text = "安德魯"
        }
        
        if DetailImageView.image == UIImage(named: "ServicesImage10") {
            DetailLabel.text = "小貓"
        }
        
        if DetailImageView.image == UIImage(named: "ServicesImage11") {
            DetailLabel.text = "萌萌der"
        }
        
        
        
        
        if DetailLabel.text == "安德魯" {
            DetailText.text = "安德魯安德魯安德魯安德魯安德魯"
        }
        
        if DetailLabel.text == "小貓" {
            DetailText.text = "小貓小貓小貓小貓小貓"
        }
        
        if DetailLabel.text == "萌萌der" {
            DetailText.text = "萌萌der萌萌der萌萌der萌萌der萌萌der"
        }
        
        
        
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
    
    
    
    @IBAction func Facebook(sender: AnyObject) {
        
    if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
        let facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        facebookSheet.setInitialText(" " + DetailLabel.text! + " " + DetailText.text! + " --- 貓氏藝術 http://www.meowart.com")
        
        facebookSheet.addImage(self.DetailImageView.image)
        self.presentViewController(facebookSheet, animated: true, completion: nil)
        
    } else {
    
        let alert = UIAlertController(title: "通知", message: "請先登入Facebook", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    
        }
        
        
    }
    
}
