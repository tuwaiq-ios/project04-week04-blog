//
//  BlogCell.swift
//  Blog
//
//  Created by ibrahim asiri on 18/03/1443 AH.
//

import UIKit

 class BlogCell: UICollectionViewCell{

     let blogImgCell = UIImageView()
     let titlLbl = UILabel()
     let subTLbl = UILabel()
     let blogLbl = UILabel()
     let writerImg = UIImageView()
     let writerLbl = UILabel()

     override init(frame: CGRect){
         super.init(frame: frame)
         
         self.backgroundColor = .darkGray
         self.contentView.layer.cornerRadius = 20.0
         self.contentView.layer.borderWidth = 2.0
         self.contentView.layer.borderColor = UIColor.clear.cgColor
         self.contentView.layer.masksToBounds = true
         self.contentView.backgroundColor = .white
         self.layer.shadowColor = UIColor.lightGray.cgColor
         self.layer.shadowOffset = CGSize(width: 0, height: 5.0)
         self.layer.shadowRadius = 2.0
         self.layer.shadowOpacity = 2.0
         self.layer.masksToBounds = false
         self.layer.cornerRadius = 2
         self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath

         blogImgCell.translatesAutoresizingMaskIntoConstraints = false
         self.contentView.addSubview(blogImgCell)
         NSLayoutConstraint.activate([
            blogImgCell.rightAnchor.constraint(equalTo: rightAnchor ),
            blogImgCell.leftAnchor.constraint(equalTo: leftAnchor),
            blogImgCell.topAnchor.constraint(equalTo: topAnchor),
            blogImgCell.heightAnchor.constraint(equalToConstant: 200),
         ])
         titlLbl.textColor = .gray
         titlLbl.font = .systemFont(ofSize: 15)
         titlLbl.translatesAutoresizingMaskIntoConstraints = false
         self.addSubview(titlLbl)
         NSLayoutConstraint.activate([
            titlLbl.topAnchor.constraint(equalTo: blogImgCell.bottomAnchor , constant: 5),
            titlLbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            titlLbl.heightAnchor.constraint(equalToConstant: 20)
         ])
         subTLbl.font = .systemFont(ofSize: 25)
         subTLbl.translatesAutoresizingMaskIntoConstraints = false
         self.addSubview(subTLbl)
         NSLayoutConstraint.activate([
            subTLbl.topAnchor.constraint(equalTo: titlLbl.bottomAnchor, constant: 5),
            subTLbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            subTLbl.heightAnchor.constraint(equalToConstant: 26)
         ])

         blogLbl.numberOfLines = 2
         blogLbl.font = .systemFont(ofSize: 15)
         blogLbl.textColor = .darkGray
         blogLbl.translatesAutoresizingMaskIntoConstraints = false
         self.addSubview(blogLbl)
         NSLayoutConstraint.activate([
            blogLbl.topAnchor.constraint(equalTo: subTLbl.bottomAnchor , constant: 5),
            blogLbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            blogLbl.rightAnchor.constraint(equalTo: rightAnchor),
            blogLbl.heightAnchor.constraint(equalToConstant: 60),
            blogLbl.widthAnchor.constraint(equalToConstant: 340)
         ])

         writerImg.layer.masksToBounds = true
         writerImg.layer.cornerRadius = 25
         writerImg.translatesAutoresizingMaskIntoConstraints = false
         self.addSubview(writerImg)
         NSLayoutConstraint.activate([
            writerImg.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            writerImg.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
            writerImg.heightAnchor.constraint(equalToConstant: 50),
            writerImg.widthAnchor.constraint(equalToConstant: 50)
         ])

         writerLbl.font = .boldSystemFont(ofSize: 15)
         writerLbl.textColor = .gray
         writerLbl.translatesAutoresizingMaskIntoConstraints = false
         self.addSubview(writerLbl)
         NSLayoutConstraint.activate([
            writerLbl.leftAnchor.constraint(equalTo: writerImg.rightAnchor, constant: 10),
            writerLbl.bottomAnchor.constraint(equalTo: bottomAnchor,  constant: -20)
         ])

     }

     required init?(coder: NSCoder) {
         super.init(coder: coder)
     }
 }
