//
//  ViewController.swift
//  CF-Day-2
//
//  Created by Andrew Reifers on 10/29/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    required init(coder aDecoder: NSCoder) {
       // super.init();
        self.primaryPerson = Person();
        super.init();
        
    }

    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var studentSwitch: UISwitch!
    @IBOutlet weak var txtPersonName: UITextField!
    
    var primaryPerson : Person;
    
    override func viewDidLoad() {
        super.viewDidLoad();

      self.primaryPerson  =  Person();
        
    }
    
    
    
    @IBAction func DisplayPersonClick(sender: AnyObject) {
        
        txtPersonName.text = self.primaryPerson.getFullName();
    
    }
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated);
//        println("View Will Appear");
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated);
//        println("Vide Did Appear");
//    }
//    
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated);
//        println("View Will Disappear");
//    }
//    
//    override func viewDidDisappear(animated: Bool) {
//        super.viewDidDisappear(animated);
//        println("View Did Disappear");
//    }
    
}

