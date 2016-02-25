//
//  WelcomeViewController.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit
import Firebase

class WelcomeViewController: UIViewController
{
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.hidden = true

    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    @IBAction func loginDidTouch(sender: AnyObject)
    {
        (sender as! UIButton).alpha = 1.0
        
        // 1 - Login anonymously here
        rootRef.authAnonymouslyWithCompletionBlock { (error, authData) -> Void in
            
            if error == nil {
                //ok to go, we just logged the user in anonymously
                self.performSegueWithIdentifier("Show Stories", sender: nil)
                
                print(rootRef.authData)
                print(authData)
            } else {
                print(error)
                }
            }
        }
    
    @IBAction func loginTouchDown(sender: AnyObject)
    {
        (sender as! UIButton).alpha = 0.8
    }
}
