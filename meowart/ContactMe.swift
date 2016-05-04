//
//  ContactMe.swift
//  meowart
//
//  Created by dingo on 2016/5/3.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//


import UIKit
import MapKit

class ContactMe: UIViewController {
    
    
    
    @IBOutlet var MapView: MKMapView!
    @IBOutlet var DialButton: UIButton!
    @IBOutlet var WebsiteButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        DialButton.layer.cornerRadius = 9.0
        WebsiteButton.layer.cornerRadius = 9.0
        
        
        let location = CLLocationCoordinate2D(latitude: 25.017719, longitude: 121.525073)
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        MapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Meow Art"
        annotation.subtitle = "Taipei, Taiwan"
        MapView.addAnnotation(annotation)
        
        self.MapView.layer.cornerRadius = self.MapView.frame.size.width / 5
        self.MapView.clipsToBounds = true
        
        self.MapView.layer.borderWidth = 3
        self.MapView.layer.borderColor = UIColor.whiteColor().CGColor
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CallMe(sender: AnyObject) {
        
        let alertcontroller = UIAlertController (title: "打電話", message: "您確定要打電話給MeowArt嗎?", preferredStyle: .Alert)
        let okAction = UIAlertAction (title: "OK", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            
            let url:NSURL = NSURL(string: "tel;//0987370427")!
            UIApplication.sharedApplication().openURL(url)
            
        }
        
        let cancelAction = UIAlertAction (title: "Cancel", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            
        }
        
        alertcontroller.addAction(okAction)
        alertcontroller.addAction(cancelAction)
        
        self.presentViewController (alertcontroller, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
