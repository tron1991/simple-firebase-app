//
//  ComposeViewController.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController
{

    @IBOutlet weak var postBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var storyTextView: UITextView!

    @IBAction func postDidTouch(sender: UIBarButtonItem)
    {
        // Post a new story here
        let newStoryText = storyTextView.text
        if newStoryText != "" {
            let newStory = Story(text: newStoryText)
            newStory.postThisStory()
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = postBarButtonItem
        title = "Tell A Story..."

        storyTextView.text = ""
        storyTextView.becomeFirstResponder()
    }
}
