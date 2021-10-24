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
    let scrollView = UIScrollView()
    let contentView = UIView()
    
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
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.topAnchor.constraint(equalTo: artSubtitle.bottomAnchor, constant: 10),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        
        artDesc.numberOfLines = 0
        artDesc.font = .systemFont(ofSize: 15)
        artDesc.textColor = .darkGray
        artDesc.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(artDesc)
        NSLayoutConstraint.activate([
            artDesc.topAnchor.constraint(equalTo: contentView.topAnchor),
            artDesc.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            artDesc.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            artDesc.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -5)
        ])
    }

}
