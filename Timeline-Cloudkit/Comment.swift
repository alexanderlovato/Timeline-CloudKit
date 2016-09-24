//
//  Comment.swift
//  Timeline-Cloudkit
//
//  Created by Alexander Lovato on 9/22/16.
//  Copyright © 2016 Nonsense. All rights reserved.
//

import Foundation

class Comment {
    
    // MARK: - Internal Properties
    let text: String
    let timestamp: Date
    let post: Post
    
    // MARK: - Inititializers
    init(text: String, timestamp: Date = Date(), post: Post) {
        self.text = text
        self.timestamp = timestamp
        self.post = post
    }
    
    
}
