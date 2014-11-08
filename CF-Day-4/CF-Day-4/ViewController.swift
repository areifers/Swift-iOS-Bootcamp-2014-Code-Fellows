//
//  ViewController.swift
//  CF-Day-4
//
//  Created by Andrew Reifers on 11/5/14.
//  Copyright (c) 2014 DrIST Coach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var tableViewDS = TableViewDS();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Home";
    
        self.tableView.dataSource = self.tableViewDS;
        
    }

    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData();
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL"{
            let detailVC = segue.destinationViewController as DetailViewController;
            
            let selectedIndexpath = self.tableView.indexPathForSelectedRow();
            var personToPass = self.tableViewDS.persons[selectedIndexpath!.row]
            
            detailVC.selectedPerson = personToPass;
            //detailVC.primaryNavigationController = self.navigationController!;
        }
    }
    
}

