//
//  ExhibitionViewController.swift
//  meowart
//
//  Created by dingo on 2016/5/3.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//

import UIKit

class ExhibitionViewController: UIViewController {
    
    @IBOutlet var Web2: UIWebView!
    
    let URL = "http://www.meowart.com/exhibition"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //1. START define URL Request
        let URLRequest = NSURL(string: URL)
        let Request = NSURLRequest(URL: URLRequest!)
        //END
        
        //2. START UIWebView
        Web2.loadRequest(Request)
        //END
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
