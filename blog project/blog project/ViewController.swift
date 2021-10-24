//
//  ViewController.swift
//  blog project
//
//  Created by Maram Al shahrani on 18/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                configureCollectionView()
        self.title = "Anime Blog"
        self.navigationItem.largeTitleDisplayMode = .always
    }
    private func configureCollectionView(){
        collectionView                      = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), collectionViewLayout: Layout())
        collectionView.autoresizingMask     = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor      = UIColor(named: "backgroundColor")
        collectionView.delegate             = self
        collectionView.dataSource           = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(BlogCell.self, forCellWithReuseIdentifier: BlogCell.ID)
        view.addSubview(collectionView)
    }
    private func Layout() -> UICollectionViewCompositionalLayout{

    let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
    
    item.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 19, bottom: 30, trailing: 19)
    
    let group = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(
        widthDimension: .fractionalWidth(1),
        heightDimension: .estimated(466)),
                                                   subitems: [item])
    
    let section = NSCollectionLayoutSection(group: group)
 
    
    section.contentInsets.top = 25
    return UICollectionViewCompositionalLayout(section: section)
    
    }
}

extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BlogPosts.posts.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell            = collectionView.dequeueReusableCell(withReuseIdentifier: BlogCell.ID, for: indexPath) as! BlogCell

        cell.setCell(card: BlogPosts.posts[indexPath.row])
            
            return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = BlogDetailVC()
        vc.blogImage = BlogPosts.posts[indexPath.row].image
        vc.blogTitle = BlogPosts.posts[indexPath.row].title
        vc.blogDescription = BlogPosts.posts[indexPath.row].desc
        self.navigationController?.pushViewController(vc, animated: true)
    }
    class ViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            overrideUserInterfaceStyle = .dark
        }
    }
}
