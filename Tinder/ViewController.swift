//
//  ViewController.swift
//  Tinder
//
//  Created by Yisen on 7/10/15.
//  Copyright (c) 2015 Yisen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var permissions = ["public_profile"]
        
        PFFacebookUtils.logInInBackgroundWithReadPermissions(permissions) {
            (user: PFUser?, error: NSError?) -> Void in
            if let user = user {
                if user.isNew {
                    println("User signed up and logged in through Facebook!")
                } else {
                    println("User logged in through Facebook!")
                }
            } else {
                println("Uh oh. The user cancelled the Facebook login.")
            }
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

