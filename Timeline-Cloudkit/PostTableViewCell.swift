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
    var post: Post?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Update post cell with a UIImage
    func updateWithPost(image: UIImage) {
        guard let post = post,
            let photoData = post.photoData,
            let image = UIImage(data: photoData) else { return }
        
        self.postImageView = UIImageView(image: image)
        
        

    }

}
