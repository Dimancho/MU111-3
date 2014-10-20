//
//  ViewController.swift
//  MU111-3
//
//  Created by Dimancho on 15.10.14.
//  Copyright (c) 2014 Dimancho. All rights reserved.
//

import UIKit

class LecturesViewController: UITableViewController {

//  Мои эксперименты
//    var myCellData = ["Ячейка 1","Ячейка 2","Ячейка 3","Ячейка 4","Ячейка 5","Ячейка 6","Ячейка 7","Ячейка 8","Ячейка 9","Ячейка 10"]
//    var myCellDetails = ["Детальки ячейки 1", "Детальки ячейки 2", "Детальки ячейки 3", "Детальки ячейки 4", "Детальки ячейки 5", "Детальки ячейки 6", "Детальки ячейки 7", "Детальки ячейки 8", "Детальки ячейки 9", "Детальки ячейки 10",]
    
    var lecturesList: [Lecture] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MUApi.sharedInstance().getLectures { (lectures) -> () in
            
            self.lecturesList = lectures
            self.tableView.reloadData()
        }
        
//        let navAuthentication: UINavigationController = UIStoryboard(name: "Authentication", bundle: nil).instantiateInitialViewController() as UINavigationController
     
//        navigationController?.presentViewController(navAuthentication, animated: true, completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Мои эксперименты
        //        return myCellData.count
        
        return lecturesList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        var cell = tableView.dequeueReusableCellWithIdentifier("lecturesCell", forIndexPath: indexPath) as UITableViewCell
  
//        Мои эксперименты
//        cell.textLabel?.text = myCellData[indexPath.row]
//        cell.detailTextLabel?.text = myCellDetails[indexPath.row]
        
        
        var lecture = lecturesList[indexPath.row]
        cell.textLabel?.text = lecture.name
        
        return cell
    }
    
}

