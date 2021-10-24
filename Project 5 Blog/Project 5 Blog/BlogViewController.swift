//
//  ViewController.swift
//  Project 5 Blog
//
//  Created by Eth Os on 17/03/1443 AH.
//

import UIKit

class BlogViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        let feedLabel = UILabel()
        feedLabel.text = "Feed"
        feedLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(feedLabel)
        feedLabel.font = .boldSystemFont(ofSize: 30)
        NSLayoutConstraint.activate([
            feedLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            feedLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
        ])
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.alwaysBounceVertical = true
        collectionView.register(BlogCell.self, forCellWithReuseIdentifier: "blog_cell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor , constant: 16),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor , constant: -16),
            collectionView.topAnchor.constraint(equalTo: feedLabel.bottomAnchor, constant: 10),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
        ])
        
    }
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return articles.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "blog_cell", for: indexPath) as! BlogCell
        let data = articles[indexPath.row]
        
        cell.articaleImageCell.image = UIImage(named: data.articleImage)
        cell.articaleImageCell.clipsToBounds = true
        cell.titelCellLabel.text = data.title
        cell.subtitelCellLabel.text = data.subtitle
        cell.articalCellLabel.text = data.article
        cell.writerImageCell.image = UIImage(named: data.writerImage)
        cell.writerNameCellLabel.text = data.writerName
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let data = articles[indexPath.row]
        
        let nextVC = ArtiaclePageViewController()
        nextVC.artIamge.image = UIImage(named: data.articleImage)
        nextVC.artTitle.text = data.title
        nextVC.artSubtitle.text = data.subtitle
        nextVC.artDesc.text = data.article
        nextVC.artWriterImage.image = UIImage(named: data.writerImage)
        nextVC.artWriterName.text = data.writerName
        
        self.present(nextVC, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 350, height: 400)
        }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 0, bottom: 1, right: 0) //.zero
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

