//
//  ArtiaclePageViewController.swift
//  Blog
//
//  Created by ibrahim asiri on 18/03/1443 AH.
//

import UIKit

 class ShowBlog: UIViewController{

     let showImg = UIImageView()
     let showTit = UILabel()
     let showST = UILabel()
     let showDesc = UILabel()
     let showWriterImg = UIImageView()
     let showWriterName = UILabel()

     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .white
         

         showWriterImg.layer.masksToBounds = true
         showWriterImg.layer.cornerRadius = 25
         showWriterImg.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(showWriterImg)
         NSLayoutConstraint.activate([
            showWriterImg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            showWriterImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            showWriterImg.heightAnchor.constraint(equalToConstant: 50),
            showWriterImg.widthAnchor.constraint(equalToConstant: 50)
         ])

         showWriterName.font = .boldSystemFont(ofSize: 15)
         showWriterName.textColor = .darkGray
         showWriterName.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(showWriterName)
         NSLayoutConstraint.activate([
            showWriterName.leftAnchor.constraint(equalTo: showWriterName.rightAnchor, constant: 10),
            showWriterName.topAnchor.constraint(equalTo: view.topAnchor, constant: 35)
         ])

         showImg.layer.masksToBounds = true
         showImg.layer.cornerRadius = 5.0
         showImg.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(showImg)
         NSLayoutConstraint.activate([
            showImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            showImg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            showImg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            showImg.heightAnchor.constraint(equalToConstant: 350)
         ])

         showTit.textColor = .gray
         showTit.font = .systemFont(ofSize: 15)
         showTit.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(showTit)
         NSLayoutConstraint.activate([
            showTit.topAnchor.constraint(equalTo: showImg.bottomAnchor, constant: 5),
             showTit.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5)
         ])

         showST.font = .boldSystemFont(ofSize: 25)
         showST.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(showST)
         NSLayoutConstraint.activate([
            showST.topAnchor.constraint(equalTo: showTit.bottomAnchor, constant: 8),
            showST.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5)
         ])

         showDesc.numberOfLines = 50
         showDesc.font = .systemFont(ofSize: 15)
         showDesc.textColor = .darkGray
         showDesc.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(showDesc)
         NSLayoutConstraint.activate([
            showDesc.topAnchor.constraint(equalTo: showST.bottomAnchor, constant: 5),
            showDesc.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            showDesc.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 5),
            showDesc.heightAnchor.constraint(equalToConstant: 200),
            showDesc.widthAnchor.constraint(equalToConstant: 345)
         ])
     }

 }
