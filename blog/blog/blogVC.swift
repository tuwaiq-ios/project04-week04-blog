//
//  ViewController.swift
//  blog
//
//  Created by Macbook on 16/03/1443 AH.
//
import UIKit

 struct Blogs {
     let name: String
     let img : UIImage?
     let nameblog : String
     let mss : String
 }

var List = [Blogs(
    name: "Ahmad",
    img: UIImage(named: "20"),
    nameblog: "Exploring Maui",
    mss: "Swaying palm trees. White sand beaches. Warm banana bread. Maui has long held visitors entranced by its charm and beauty, but Hawai’i is so much more than a travel playground: its history and culture run deep. Learning about Hawai’ian culture, language, and history will deepen your respect and love for this beautiful island and its many stories...."),
           Blogs(
    name: "Fawaz",
    img: UIImage(named: "21"),
    nameblog: "Arctic Adventures",
    mss: "Last month we were looking at Fun Facts About The Arctic, as there is so much to write about we are now looking at the best times to visit Most people know that the Arctic is an incredibly cold region circling the North Pole. When we think of the Arctic, our minds conjure images of ice and snow and blizzards as far as the eye can see..."
           )
           ]

class blogVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{


       override func viewDidLoad() {

         super.viewDidLoad()
           let feed = UILabel()
        
           feed.text = "Feed"
           feed.translatesAutoresizingMaskIntoConstraints = false
           feed.textColor = .white
           feed.font = UIFont.boldSystemFont(ofSize: 40)
           
           view.addSubview(feed)
           
           NSLayoutConstraint.activate([feed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17 ),
                feed.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
                feed.heightAnchor.constraint(equalToConstant: 90),
                feed.widthAnchor.constraint(equalToConstant: 140)
                ])
           
         let TV = UITableView()

         TV.dataSource = self
         TV.delegate = self
         TV.register(Cell.self, forCellReuseIdentifier: "cell")
         TV.backgroundColor = .black
         TV.rowHeight = 390
         TV.translatesAutoresizingMaskIntoConstraints = false
        
           
         view.addSubview(TV)
        
           
           
         NSLayoutConstraint.activate([TV.leftAnchor.constraint(equalTo: feed.leftAnchor),
                      TV.rightAnchor.constraint(equalTo: view.rightAnchor),
                                      TV.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
                      TV.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                       ])
       }

       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return List.count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
         let list = List[indexPath.row]
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
           
           cell.backgroundColor = .black
           cell.imgincell.image = UIImage(systemName: "person")
           cell.imgblog.image = list.img
           cell.nameincell.text = list.name
           cell.nameblog.text = list.nameblog
           cell.mssb.text = list.mss
           cell.imgincell.layer.masksToBounds = true
           cell.imgincell.layer.cornerRadius = 45
           return cell
       }
         func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
             
             if editingStyle == .delete {
                 List.remove(at: indexPath.row)
                 tableView.reloadData()
             }
         }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let item = List[indexPath.row]

                let toVC2 = showVC()
                toVC2.imageshow.image = item.img
                toVC2.namebs.text = item.nameblog
                toVC2.mssshow.text = item.mss

                self.present(toVC2, animated: true, completion: nil)

  
    }

}


class Cell: UITableViewCell {

         let imgincell = UIImageView()
         let nameincell = UILabel()
         let blog = UILabel()
         let imgblog = UIImageView()
         let nameblog = UILabel()
         let mssb = UILabel()
    
    
   
    
         override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
         super.init(style: style , reuseIdentifier: reuseIdentifier )
             
             

           imgincell.translatesAutoresizingMaskIntoConstraints = false

           self.addSubview(imgincell)

           NSLayoutConstraint.activate([imgincell.leftAnchor.constraint(equalTo: leftAnchor),
           imgincell.heightAnchor.constraint(equalToConstant: 60),
           imgincell.widthAnchor.constraint(equalTo: imgincell.heightAnchor,multiplier: 100/100),
             imgincell.bottomAnchor.constraint(equalTo: bottomAnchor)])
             
           nameincell.textColor = .white
           nameincell.text = ""
           nameincell.translatesAutoresizingMaskIntoConstraints = false

           self.addSubview(nameincell)
           NSLayoutConstraint.activate(
           [
            //nameincell.centerYAnchor.constraint(equalTo: centerYAnchor),
           nameincell.leftAnchor.constraint(equalTo: imgincell.leftAnchor , constant: 80),
           nameincell.heightAnchor.constraint(equalToConstant: 80),
           nameincell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100),
            nameincell.bottomAnchor.constraint(equalTo: bottomAnchor)])
             
             blog.text = "BLOG"
             blog.textColor = .white
             blog.translatesAutoresizingMaskIntoConstraints = false

             self.addSubview(blog)
             
             NSLayoutConstraint.activate([
                blog.topAnchor.constraint(equalTo: topAnchor, constant:171),
                blog.leftAnchor.constraint(equalTo: leftAnchor),
             blog.heightAnchor.constraint(equalToConstant: 30),
             blog.widthAnchor.constraint(equalToConstant: 60)])
             
             nameblog.font = UIFont.boldSystemFont(ofSize: 25)
             nameblog.textColor = .blue
             nameblog.translatesAutoresizingMaskIntoConstraints = false

             self.addSubview(nameblog)
             
             NSLayoutConstraint.activate([
                nameblog.topAnchor.constraint(equalTo: topAnchor, constant:205),
                nameblog.leftAnchor.constraint(equalTo: leftAnchor),
             nameblog.heightAnchor.constraint(equalToConstant: 30),
            nameblog.widthAnchor.constraint(equalToConstant: 200)])
             
        
             
             mssb.font = UIFont.systemFont(ofSize: 17)
             mssb.numberOfLines = 2
             mssb.textColor = .darkGray
             mssb.translatesAutoresizingMaskIntoConstraints = false

             self.addSubview(mssb)
             
             NSLayoutConstraint.activate([
                mssb.topAnchor.constraint(equalTo: topAnchor, constant:220),
                mssb.leftAnchor.constraint(equalTo: leftAnchor),
             mssb.heightAnchor.constraint(equalToConstant: 90),
             mssb.widthAnchor.constraint(equalToConstant: 200)])
    
             imgblog.translatesAutoresizingMaskIntoConstraints = false

             self.addSubview(imgblog)
             
             NSLayoutConstraint.activate([
                imgblog.topAnchor.constraint(equalTo: topAnchor),
                imgblog.leftAnchor.constraint(equalTo: leftAnchor),
             imgblog.heightAnchor.constraint(equalToConstant: 170),
             imgblog.widthAnchor.constraint(equalToConstant: 375)])
       }
       required init?(coder: NSCoder) {
         super.init(coder: coder)
       }
    
       }
