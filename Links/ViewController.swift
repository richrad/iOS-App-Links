//
//  ViewController.swift
//  Links
//
//  Created by Richard Allen on 7/27/15.
//  Copyright (c) 2015 Lapdog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToOne(sender: AnyObject) {
        let thisApplication = UIApplication.sharedApplication()
        
        if let url = NSURL(string: "links://one"), delegate = thisApplication.delegate as? AppDelegate {
            delegate.application(thisApplication, openURL: url, sourceApplication: nil, annotation: nil)
        }
    }
    
    @IBAction func goToTwo(sender: AnyObject) {
        let thisApplication = UIApplication.sharedApplication()
        
        if let url = NSURL(string: "links://two"), delegate = thisApplication.delegate as? AppDelegate {
            delegate.application(thisApplication, openURL: url, sourceApplication: nil, annotation: nil)
        }
    }
    
}

