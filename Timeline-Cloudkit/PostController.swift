//
//  PostController.swift
//  Timeline-Cloudkit
//
//  Created by Alexander Lovato on 9/22/16.
//  Copyright © 2016 Nonsense. All rights reserved.
//

import Foundation
import UIKit

class PostController {
    
    // MARK: - Shared Controller
    static let sharedController = PostController()
    
    // MARK: - Private Properties
    private(set) var posts = [Post]()
    
    // MARK: - Functions
    
    /// Initialize a Post with the image and Comment with the caption text
    func createPost(image: UIImage, caption: String?) {
        
        guard let caption = caption,
            let data = UIImagePNGRepresentation(image) else { return }
        
        let post = Post(photoData: data)
        posts.append(post)
        let _ = addCommentToPost(text: caption, post: post)
        
    }
    
    /// Adds a comment to the appropriate post
    func addCommentToPost(text: String, post: Post) -> Comment {
        let comment = Comment(text: text, post: post)
        post.comments.append(comment)
        return comment
        
        
    }
    
    func deletePost(post: Post) {
        let indexPath = IndexPath()
        post.comments.remove(at: indexPath.row)
    }
  
}
