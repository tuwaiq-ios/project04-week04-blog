//
//  BlogCell.swift
//  Project 5 Blog
//
//  Created by Eth Os on 17/03/1443 AH.
//

import UIKit

class BlogCell: UICollectionViewCell{
    
    let articaleImageCell = UIImageView()
    let titelCellLabel = UILabel()
    let subtitelCellLabel = UILabel()
    let articalCellLabel = UILabel()
    let writerImageCell = UIImageView()
    let writerNameCellLabel = UILabel()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
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
        
        
        articaleImageCell.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(articaleImageCell)
        NSLayoutConstraint.activate([
            articaleImageCell.rightAnchor.constraint(equalTo: rightAnchor ),
            articaleImageCell.leftAnchor.constraint(equalTo: leftAnchor),
            articaleImageCell.topAnchor.constraint(equalTo: topAnchor),
            articaleImageCell.heightAnchor.constraint(equalToConstant: 200),
        ])
        titelCellLabel.textColor = .gray
        titelCellLabel.font = .systemFont(ofSize: 15)
        titelCellLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titelCellLabel)
        NSLayoutConstraint.activate([
            titelCellLabel.topAnchor.constraint(equalTo: articaleImageCell.bottomAnchor , constant: 5),
            titelCellLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            titelCellLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        subtitelCellLabel.font = .systemFont(ofSize: 25)
        subtitelCellLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subtitelCellLabel)
        NSLayoutConstraint.activate([
            subtitelCellLabel.topAnchor.constraint(equalTo: titelCellLabel.bottomAnchor, constant: 5),
            subtitelCellLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            subtitelCellLabel.heightAnchor.constraint(equalToConstant: 26)
        ])
        
        articalCellLabel.numberOfLines = 2
        articalCellLabel.font = .systemFont(ofSize: 15)
        articalCellLabel.textColor = .darkGray
        articalCellLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(articalCellLabel)
        NSLayoutConstraint.activate([
            articalCellLabel.topAnchor.constraint(equalTo: subtitelCellLabel.bottomAnchor , constant: 5),
            articalCellLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            articalCellLabel.rightAnchor.constraint(equalTo: rightAnchor),
            articalCellLabel.heightAnchor.constraint(equalToConstant: 60),
            articalCellLabel.widthAnchor.constraint(equalToConstant: 340)
        ])
        
        writerImageCell.layer.masksToBounds = true
        writerImageCell.layer.cornerRadius = 25
        writerImageCell.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(writerImageCell)
        NSLayoutConstraint.activate([
            writerImageCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            writerImageCell.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
            writerImageCell.heightAnchor.constraint(equalToConstant: 50),
            writerImageCell.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        writerNameCellLabel.font = .boldSystemFont(ofSize: 15)
        writerNameCellLabel.textColor = .gray
        writerNameCellLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(writerNameCellLabel)
        NSLayoutConstraint.activate([
            writerNameCellLabel.leftAnchor.constraint(equalTo: writerImageCell.rightAnchor, constant: 10),
            writerNameCellLabel.bottomAnchor.constraint(equalTo: bottomAnchor,  constant: -20)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
}
