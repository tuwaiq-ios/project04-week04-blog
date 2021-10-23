//
//  ViewController.swift
//  SaraBlog
//
//  Created by SARA SAUD on 3/16/1443 AH.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    private var collectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //view.backgroundColor = .systemBackground
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: (view.frame.size.width/3)-4,
                                 height: (view.frame.size.width/3)-4)
        collectionView = UICollectionView(frame: .zero , collectionViewLayout: layout)
        
        guard let collectionView = collectionView else {
            return
        }
        collectionView.register(CustomCollectionViewCell.self,
                                forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = .systemBlue
        return cell
    }
    
  
    
}


//import UIKit
//
//class BlogController: UICollectionViewController{
//
//
//let cellId = "cellId"
//    var blogs : [Blog] = [Blog] ()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        navigationItem.title = "Sara Blog"
//
//        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
       // collectionView?.()
        
        // Do any additional setup after loading the view.
        
    
