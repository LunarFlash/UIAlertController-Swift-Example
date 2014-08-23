//
//  ViewController.swift
//  UIAlertControllerSwiftExample
//  http://www.appcoda.com/uialertcontroller-swift-closures-enum/
//  Created by Yi Wang on 8/23/14.
//  Copyright (c) 2014 Vento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showAlert() {
        // show alert using UIAlertController
        
        // create UIAlertController
        let alertController = UIAlertController (title: "Hey buddy:", message: "What's up?", preferredStyle: .Alert)
        
        // create actions

        // default action
        let defaultAction = UIAlertAction (title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        // call action
        // closures are self-contained blocks of functionality that can be passed around in your code. It is very similar to blocks in Objective-C.
        let callActionHandler = { (action:UIAlertAction!) -> Void in
            let alertMessage = UIAlertController (title: "Service Unavailable", message: "Sorry the call feature is not available yet", preferredStyle: .Alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alertMessage, animated: true, completion: nil)
        }
        let callAction = UIAlertAction(title: "Call", style: .Default, handler: callActionHandler)
        alertController.addAction(callAction)
        
        
        // present alert
        presentViewController(alertController, animated: true, completion: nil);
        
    }
    
    

}

