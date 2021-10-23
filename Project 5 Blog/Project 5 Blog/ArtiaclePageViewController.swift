//
//  ArtiaclePageViewController.swift
//  Project 5 Blog
//
//  Created by Eth Os on 17/03/1443 AH.
//

import UIKit

class ArtiaclePageViewController: UIViewController{
    
    let artIamge = UIImageView()
    let artTitle = UILabel()
    let artSubtitle = UILabel()
    let artDesc = UILabel()
    let artWriterImage = UIImageView()
    let artWriterName = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        artWriterImage.layer.masksToBounds = true
        artWriterImage.layer.cornerRadius = 25
        artWriterImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(artWriterImage)
        NSLayoutConstraint.activate([
            artWriterImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            artWriterImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            artWriterImage.heightAnchor.constraint(equalToConstant: 50),
            artWriterImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        artWriterName.font = .boldSystemFont(ofSize: 15)
        artWriterName.textColor = .darkGray
        artWriterName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(artWriterName)
        NSLayoutConstraint.activate([
            artWriterName.leftAnchor.constraint(equalTo: artWriterImage.rightAnchor, constant: 10),
            artWriterName.topAnchor.constraint(equalTo: view.topAnchor, constant: 35)
        ])
        
        artIamge.layer.masksToBounds = true
        artIamge.layer.cornerRadius = 5.0
        artIamge.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(artIamge)
        NSLayoutConstraint.activate([
         artIamge.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
         artIamge.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
         artIamge.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
         artIamge.heightAnchor.constraint(equalToConstant: 350)
        ])
     
        artTitle.textColor = .gray
        artTitle.font = .systemFont(ofSize: 15)
        artTitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(artTitle)
        NSLayoutConstraint.activate([
            artTitle.topAnchor.constraint(equalTo: artIamge.bottomAnchor, constant: 5),
            artTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5)
        ])
        
        artSubtitle.font = .boldSystemFont(ofSize: 25)
        artSubtitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(artSubtitle)
        NSLayoutConstraint.activate([
            artSubtitle.topAnchor.constraint(equalTo: artTitle.bottomAnchor, constant: 8),
            artSubtitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5)
        ])
        
        artDesc.numberOfLines = 50
        artDesc.font = .systemFont(ofSize: 15)
        artDesc.textColor = .darkGray
        artDesc.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(artDesc)
        NSLayoutConstraint.activate([
            artDesc.topAnchor.constraint(equalTo: artSubtitle.bottomAnchor, constant: 5),
            artDesc.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            artDesc.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 5),
            artDesc.heightAnchor.constraint(equalToConstant: 200),
            artDesc.widthAnchor.constraint(equalToConstant: 345)
        ])
    }
    
}
