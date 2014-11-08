//
//  Person.swift
//  CF-Day-2
//
//  Created by Andrew Reifers on 11/2/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import Foundation


public class Person{
    
    var firstName : String = "";
    var lastName : String = "";
    var isStudent : Bool = false;
    var phoneNumber : String = "";
    
    
    
    init(firstname : String, lastname : String, isstudent : Bool, phonenumber : String){
        self.firstName = firstname;
        self.lastName = lastname;
        self.isStudent = isstudent;
        self.phoneNumber = phonenumber;
    }
    
    
    init(firstname : String, lastname : String, isstudent : Bool){
        self.firstName = firstname;
        self.lastName = lastname;
        self.isStudent = isstudent;
        self.phoneNumber = "Not Listed";
        
        
    }
    
    init(firstname : String, lastname : String){
        self.firstName = firstname;
        self.lastName = lastname;
        self.isStudent = false;
        self.phoneNumber = "Not Listed";
        
    }
    
    init(){
        
        self.firstName = "Andrew";
        self.lastName = "Reifers";
        self.isStudent = true;
        self.phoneNumber = "Not Listed";
        
    }
    
    
    public func getFullName() -> String{
    
        return self.firstName + " " + self.lastName;
    
    }
    
    public func printFullName() -> Void{
        println(self.firstName + " " + self.lastName);
    }
    
}