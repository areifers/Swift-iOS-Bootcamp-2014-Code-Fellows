//
//  ViewController.swift
//  HW-TableView-Seque-App
//
//  Created by Andrew Reifers on 11/5/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var persons = [Person]() //this creates an empty array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        
        var nolan = Person(firstname: "Nolan", lastname: "Reifers");
        self.persons.append(nolan) //this appends myPerson to array
        
        var addison = Person(firstname: "Addison", lastname: "Reifers");
        self.persons.append(addison) //this appends myPerson to array
        
        var sandy = Person(firstname: "Sandy", lastname: "Reifers");
        self.persons.append(sandy) //this appends myPerson to array
        
        self.persons.append(Person());
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
       
        var personToDisplay = self.persons[indexPath.row]
        cell.textLabel.text = personToDisplay.getFullName();
        return cell
    }
    


}

