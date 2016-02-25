//
//  StoriesTableViewController.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit
import Firebase

class StoriesTableViewController: UITableViewController
{
    var stories = [Story]()
    
    @IBOutlet weak var composeBarButtonItem: UIBarButtonItem!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Download some stories here
        storiesRef.observeEventType(.Value, withBlock: { (snapshot: FDataSnapshot!) in
            //print(snapshot)
            for child in snapshot.children {
                let storyData = child as! FDataSnapshot
                    let downloadedStory = Story(snapshot: storyData)
                    self.stories.insert(downloadedStory, atIndex: 0)
            }
            
            self.tableView.reloadData()
        })
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.navigationController?.navigationBar.hidden = false
        self.navigationItem.hidesBackButton = true
        title = "Stories"
        self.navigationItem.rightBarButtonItem = composeBarButtonItem
        
        self.tableView.estimatedRowHeight = 92.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Story Cell", forIndexPath: indexPath) as! StoryTableViewCell

        let story = self.stories[indexPath.row]
        cell.story = story

        return cell
    }
}
