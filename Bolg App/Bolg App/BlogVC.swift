//
//  CellBlog.swift
//  Bolg App
//
//  Created by Ahmed Assiri on 18/03/1443 AH.
////

import UIKit

 struct Blogs {
     let name: String
     let img : UIImage?
     let nameblog : String
     let mss : String
 }

var List = [Blogs(
    name: "الصداقة",
    img: UIImage(named: "A"),
    nameblog: "الصداقة",
    mss: "الصداقة تعدّ الصداقة الحقيقيّة من أجمل العلاقات التي تحدث للفرد في حياته، فللصّداقة معانٍ لا يفهمها إلّا من يملك صديقاً حقيقيّاً صدوقاً، وقد قيل العديد من الكلام والعبارات الّتي تعبّر عن الصداقة الحقيقيّة والمعاني الّتي تحملها، اخترنا لكم بعضاً منها: الصّداقة بحرٌ من بحور الحياة نركب قاربه ونخدّر أموآجه. الصّداقة مدينة مفتاحها الوفاء وسكّانها الأوفياء. الصّداقه شجرة بذورها الوفاء وأغصانها الأمل وأوراقها السّعادة. الصّداقه الحقيقيّة هي تلاحم شخصين في شخصيّة واحدة تحمل فكراً واحداً. الصّداقة كلمة تحمل معانٍ عدّة أجملها التّضحية من أجل الآخر..."),
           Blogs(
    name: "غازي القصيبي",
    img: UIImage(named: "B"),
    nameblog: "المراحل التعليمية التي مر بها الأديب غازي القصيبي"
,
    mss: "درس الشاعر و الأديب غازي عبد ىالرحمن القصيبي في مدارس المنامة بالبحرين ثم إنتقل لجمهورية مصر العربية و تلقى هناك ليسانس الحقوق و حصل عليه من خلال جامعة القاهرة و سافر للولايات المتحدة الأمريكية و حصل على الماجستير في العلاقات الدولية من جامعة جنوب كاليفورنيا و قام بالدراسة في لندن أيضا العلاقات الدولية فقد كانت حريصا على الحصول على الشهادات الدراسية العالية فكان طموحا لأقصى درجة  ، كان والده تاجرا و عرض عليه أن يعمل معه ومع أخوته في التجارة ولكن الشاعر غازي القضيبي كان طموحا جدا و فضل إستكمال دراسته عن التجارة ، و بالفعل وافق والده على أن يستكمل إبنه دراسته و رحب بإستقلاله .."
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
         TV.backgroundColor = .white
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
           
           cell.backgroundColor = .white
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
