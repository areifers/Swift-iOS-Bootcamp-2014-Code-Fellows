//
//  Person.swift
//  Homework-Dayone
//
//  Created by Andrew Reifers on 10/29/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import Foundation

public class Person {
    
    var firstName : String = ""
    var lastName : String = "";
    var isStudent = Bool();
    
    init(firstname : String, lastname : String){
        self.firstName = firstname;
        self.lastName = lastname;
    }
    
    public func getFullName() -> String{
    
        return self.firstName + " " + self.lastName;
    }
    
    
    
}