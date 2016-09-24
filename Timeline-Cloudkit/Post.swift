//
//  Post.swift
//  Timeline-Cloudkit
//
//  Created by Alexander Lovato on 9/22/16.
//  Copyright © 2016 Nonsense. All rights reserved.
//

import Foundation
import UIKit

class Post {
    
    
    // MARK: - Internal Properties
    let photoData: Data?
    let timestamp: Date?
    var comments: [Comment]
    
    // MARK: - Computed Properties
    var photo: UIImage? {
        guard let photoData = self.photoData else { return nil }
        return UIImage(data: photoData)
    }
    
    // MARK: - Initializers
    init(photoData: Data, timestamp: Date = Date(), comments: [Comment] = []) {
        self.photoData = photoData
        self.timestamp = timestamp
        self.comments = comments
    }
    
}
