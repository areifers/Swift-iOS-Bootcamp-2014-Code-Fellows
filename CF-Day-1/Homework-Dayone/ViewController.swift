//
//  ViewController.swift
//  Homework-Dayone
//
//  Created by Andrew Reifers on 10/29/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Holla: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var someDude = Person(firstname: "Leroy", lastname : "Jenkins");
   
        self.Holla.text = someDude.getFullName();
    }

}

