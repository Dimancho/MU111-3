//
//  LectureDetailsViewController.swift
//  MU111-3
//
//  Created by Dimancho on 20.10.14.
//  Copyright (c) 2014 Dimancho. All rights reserved.
//

import UIKit

class LectureDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var imageView = UIImageView(frame: CGRectMake(5, 69, 100, 100))
        
        var url = NSURL(string: "https://developer.apple.com/assets/promos/four/ios-profiles/image.png")
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) { () -> Void in
            var data = NSData(contentsOfURL: url)
            
            var image = UIImage(data: data)
            
            
            
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                imageView.image = image
                
                self.view.addSubview(imageView)
                
                println("image shown")
            })
            
        }
        
        println("Hi")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
