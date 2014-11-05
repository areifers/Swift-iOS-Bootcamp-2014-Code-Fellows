//
//  ViewController.swift
//  CodeFellows-First-SingleView-Example
//
//  Created by Andrew Reifers on 10/27/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.orangeColor()
    }


    @IBAction func buttonClick(sender: AnyObject) {
        self.view.backgroundColor = UIColor.brownColor();
    }
    
    @IBAction func didSwitch(sender: AnyObject) {
        
        var boolSwitched = sender as UISwitch;
        
        if(boolSwitched.on){
            self.view.backgroundColor = UIColor.whiteColor();
        }else{
            self.view.backgroundColor = UIColor.blackColor();
        }
    }
}

