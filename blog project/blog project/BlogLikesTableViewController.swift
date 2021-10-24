//
//  BlogLikesTableViewController.swift
//  blog project
//
//  Created by PC on 18/03/1443 AH.
//

import UIKit

class BlogLikesTableViewController: UITableViewController {

    var likePosts = [Blog]()
    
    let cellId = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        for post in BlogPosts.posts {
            if post.isLiked == true {
                self.likePosts.append(post)
            }
        }
        tableView.reloadData()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return likePosts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)

        cell.textLabel?.text = likePosts[indexPath.row].title
        cell.imageView?.image = UIImage(named: likePosts[indexPath.row].image)

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    

}
