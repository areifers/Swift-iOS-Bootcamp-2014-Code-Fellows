//
//  DetailViewController.swift
//  CF-Day-4
//
//  Created by Andrew Reifers on 11/5/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    //Person in the detail view to be delegated
    //in the View Controllers prepare For Segue
    var selectedPerson = Person();
    
    //Setup some outlets for setting the fields
    //that will allow us edit the single person
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    
    
    //Basic Initiliazer for the Details View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.txtFirstName.text = self.selectedPerson.firstName;
        self.txtLastName.text = self.selectedPerson.lastName;
       
    }


    //Handle the saving of a person.
    @IBAction func savePerson(sender: AnyObject) {
        
        self.selectedPerson.firstName = self.txtFirstName.text;
        self.selectedPerson.lastName = self.txtLastName.text;
        //After saving the single Person navigate back to the Home View
        self.navigationController?.popToRootViewControllerAnimated(true);
    }

    
   
   
}
