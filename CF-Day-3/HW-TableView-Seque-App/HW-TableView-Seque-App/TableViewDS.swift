//
//  TableViewDS.swift
//  HW-TableView-Seque-App
//
//  Created by Andrew Reifers on 11/5/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import Foundation
import UIKit


class TableViewDS : NSObject, UITableViewDataSource {
    
    var persons = [Person](); //this creates an empty array
    
    
    override init(){
        var nolan = Person(firstname: "Nolan", lastname: "Reifers");
        self.persons.append(nolan) //this appends myPerson to array
        
        var addison = Person(firstname: "Addison", lastname: "Reifers");
        self.persons.append(addison) //this appends myPerson to array
        
        var sandy = Person(firstname: "Sandy", lastname: "Reifers");
        self.persons.append(sandy) //this appends myPerson to array
        
        self.persons.append(Person());

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
        
        var personToDisplay = self.persons[indexPath.row]
        cell.textLabel.text = personToDisplay.getFullName();
        return cell;
    }
    
}