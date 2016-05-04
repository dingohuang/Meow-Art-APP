//
//  FirstViewController.swift
//  meowart
//
//  Created by dingo on 2016/4/12.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var logo: UIImageView!
    @IBOutlet var AboutButton: UIButton!
    @IBOutlet var AuthorButton: UIButton!
    @IBOutlet var ArtworkButton: UIButton!
    @IBOutlet var ContactButton: UIButton!
    @IBOutlet var ExhibitionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //logo.layer.cornerRadius = logo.frame.size.width/2
        //logo.clipsToBounds = true
        
        AboutButton.layer.cornerRadius = 9.0
        AuthorButton.layer.cornerRadius = 9.0
        ArtworkButton.layer.cornerRadius = 9.0
        ContactButton.layer.cornerRadius = 9.0
        ExhibitionButton.layer.cornerRadius = 9.0
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage.png")!)
        

    }

    
    
    
    @IBAction func clickButton1(sender: AnyObject) {
        tabBarController?.selectedIndex = 1
    }
    
    
    @IBAction func clickButton2(sender: AnyObject) {
        tabBarController?.selectedIndex = 2
    }
    
    
    @IBAction func clickButton3(sender: AnyObject) {
        tabBarController?.selectedIndex = 3
    }
    
    
    @IBAction func clickbutton5(sender: AnyObject) {
        tabBarController?.selectedIndex = 4
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

