//
//  BlogCell.swift
//  SaraBlog
//
//  Created by SARA SAUD on 3/17/1443 AH.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    static let identifier = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .yellow
        imageView.clipsToBounds = true
        return imageView
    }()
    private let myLabel: UILabel = {
        let lable = UILabel()
        lable.text = "Custom"
        lable.backgroundColor = .green
        lable.textAlignment = .center
        
        return lable
    }()
    private let myBlog: UITextView = {
        let blog = UITextView()
        blog.text = " "
        return blog
    }()
    private let BlogerName: UILabel = {
        let blogerName = UILabel()
        blogerName.text = "Safwan "
        return blogerName
    }()
    private let BlogerPhoto: UIImageView = {
        let blogerPhoto = UIImageView()
        blogerPhoto.image =  UIImage(systemName: "person")
        return blogerPhoto
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemRed
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        contentView.addSubview(myBlog)
        contentView.addSubview(BlogerName)
        contentView.addSubview(BlogerPhoto)

    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLabel.frame = CGRect(x: 5,
                               y: contentView.frame.size.height-50,
                               width: contentView.frame.size.width-10,
                               height: 50)
        myImageView.frame = CGRect(x: 5, y: 0, width: contentView.frame.size.width-10,
                                   height: contentView.frame.size.height-50)
    }
}

//class BlogCell : UICollectionViewCell{
//    var blog : Blog {
//        didSet{
//            Blogtitle.text = Blog?.Blogtitle
//            BlogImage.images = Blog?.BlogImage
//
//        }
//    }
//
//




