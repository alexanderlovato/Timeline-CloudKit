//
//  PostListTableViewController.swift
//  Timeline-Cloudkit
//
//  Created by Alexander Lovato on 9/22/16.
//  Copyright © 2016 Nonsense. All rights reserved.
//

import UIKit

class PostListTableViewController: UITableViewController {
    
    // MARK: - Private Properties
    private let postTableViewCell = "PostTableViewCell"
    private let viewPostDetail = "viewPostDetail"

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PostController.sharedController.posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: postTableViewCell, for: indexPath) as! PostTableViewCell

        let post = PostController.sharedController.posts[indexPath.row]
        
        guard let photo = post.photo else { return cell }
        cell.updateWithPost(image: photo)

        return cell
    }



    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let post = PostController.sharedController.posts[indexPath.row]
            PostController.sharedController.deletePost(post: post)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let postDetailTableViewController = segue.destination as! PostDetailTableViewController
        
        guard let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell) else { return }
        let index = indexPath.row
        let postToPass = PostController.sharedController.posts[index]
        postDetailTableViewController.post = postToPass
        
        // Pass the selected object to the new view controller.
    }

}













