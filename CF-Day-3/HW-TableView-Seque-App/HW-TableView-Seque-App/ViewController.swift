//
//  ViewController.swift
//  HW-TableView-Seque-App
//
//  Created by Andrew Reifers on 11/5/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func buttonClicked(sender: AnyObject) {
        performSegueWithIdentifier("showDetails",sender : self);
    }
   
    var persons = [Person](); //this creates an empty array
    
    var tableViewDS = TableViewDS();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Kiss My Pucker";
        self.tableView.dataSource = self.tableViewDS;
        
    }
    
}

