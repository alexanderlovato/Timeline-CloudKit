//
//  PostTableViewCell.swift
//  Timeline-Cloudkit
//
//  Created by Alexander Lovato on 9/23/16.
//  Copyright © 2016 Nonsense. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /// Update post cell with a UIImage
    func updateWithPost(post: Post) {
        postImageView.image = post.photo
        
    }

}
