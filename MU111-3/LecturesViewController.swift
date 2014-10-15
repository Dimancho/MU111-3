//
//  ViewController.swift
//  MU111-3
//
//  Created by Dimancho on 15.10.14.
//  Copyright (c) 2014 Dimancho. All rights reserved.
//

import UIKit

class LecturesViewController: UITableViewController {
    
    var myData = ["Ячейка 1","Ячейка 2","Ячейка 3","Ячейка 4","Ячейка 5","Ячейка 6","Ячейка 7","Ячейка 8","Ячейка 9","Ячейка 10",]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let navAuthentication: UINavigationController = UIStoryboard(name: "Authentication", bundle: nil).instantiateInitialViewController() as UINavigationController
        
        navigationController?.presentViewController(navAuthentication, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

