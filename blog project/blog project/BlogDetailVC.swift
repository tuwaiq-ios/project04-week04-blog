//
//  BlogDetailVC.swift
//  blog project
//
//  Created by PC on 18/03/1443 AH.
//

import UIKit

class BlogDetailVC: UIViewController {
    var postIndex : Int?
    var blogImage: String?
    var blogTitle: String?
    var blogDescription: String?
    
    let bImage: UIImageView =  {
        let image           = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode   = .scaleToFill
        image.clipsToBounds = true
        return image
    }()
    private let bTitle: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor     =  UIColor.label
        title.font          = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 27, weight: .bold))
        return title
    }()
    private let bDescription: UILabel = {
        let description             = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        description.textColor       =  UIColor.secondaryLabel
        description.font            = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 18, weight: .regular))
        description.numberOfLines   = 0
        description.textAlignment   = .left
        return description
    }()
    
    let likeButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .lightGray
        button.addTarget(self, action: #selector(likeButtonAction), for: .touchUpInside)
        return button
    }()
    
    @objc func likeButtonAction() {
        likeButton.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
        likeButton.tintColor = .systemRed
        
        BlogPosts.posts[postIndex!].isLiked = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Blog Post"
        self.navigationItem.largeTitleDisplayMode = .never
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(named: "backgroundColor")
        guard let blogIm = blogImage else {return}
        guard let blogT = blogTitle else {return}
        guard let blogDes = blogDescription else {return}

        view.addSubview(bImage)
        view.addSubview(bTitle)
        view.addSubview(bDescription)
        view.addSubview(likeButton)
        
        if BlogPosts.posts[postIndex!].isLiked == true {
            likeButton.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
            likeButton.tintColor = .red
        }

        NSLayoutConstraint.activate([
            bImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bImage.widthAnchor.constraint(equalTo: view.widthAnchor),
            bImage.heightAnchor.constraint(equalToConstant: view.frame.size.height / 3),
            
            bTitle.topAnchor.constraint(equalTo: bImage.bottomAnchor, constant: 20),
            bTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 19),
            bTitle.trailingAnchor.constraint(equalTo: likeButton.leadingAnchor, constant: -20),
            bTitle.heightAnchor.constraint(equalToConstant: 40),
            
            likeButton.topAnchor.constraint(equalTo: bImage.bottomAnchor, constant: 20),
            likeButton.heightAnchor.constraint(equalTo: bTitle.heightAnchor),
            likeButton.widthAnchor.constraint(equalTo: likeButton.heightAnchor),
            
            bDescription.topAnchor.constraint(equalTo: bTitle.bottomAnchor, constant: 10),
            bDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 19),
            bDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -19),
            bDescription.heightAnchor.constraint(equalToConstant: 240)
        ])
        
        bImage.image        = UIImage(named: blogIm)
        bTitle.text         = blogT
        bDescription.text   = blogDes

    }
}
