//
//  Constant.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import Foundation
import Firebase

public let rootRef: Firebase = Firebase(url: "https://nicholas-stories.firebaseio.com/")
public let storiesRef: Firebase = Firebase(url: "https://nicholas-stories.firebaseio.com/stories")

// root reference : "https://nicholas-stories.firebaseio.com/"

var FireBaseDataBase = [
    "stories" : [
        //https://nicholas-stories.firebaseio.com/stories/1
        "1" : [
            "text" : "I love cats",
            "numberOfLikes" : 123,
            "numberOfAngry" : 12
        ],
        
        "2" : [
            "text" : "I love dogs",
            "numberOfLikes" : 13,
            "numberOfAngry" : 29
        ],
        
        "3" : [
            "text" : "I love dinosaurs",
            "numberOfLikes" : 122,
            "numberOfAngry" : 8
        
        ]
        
    ]
    
]