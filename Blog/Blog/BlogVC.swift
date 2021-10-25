//
//  ViewController.swift
//  Blog
//
//  Created by ibrahim asiri on 18/03/1443 AH.
//

import UIKit

 class BlogVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


     override func viewDidLoad() {
         super.viewDidLoad()
         
         
         
         view.backgroundColor = UIColor.darkText
         let feedLbl = UILabel()
         feedLbl.text = "مدونات"
         feedLbl.textColor = .systemBackground
         feedLbl.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(feedLbl)
         feedLbl.font = .boldSystemFont(ofSize: 35)
         NSLayoutConstraint.activate([
            feedLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30),
            feedLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
         ])

         let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
         collectionView.delegate = self
         collectionView.dataSource = self
         collectionView.backgroundColor = .white
         collectionView.alwaysBounceVertical = true
         collectionView.register(BlogCell.self, forCellWithReuseIdentifier: "cell")
         collectionView.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(collectionView)
         NSLayoutConstraint.activate([
             collectionView.leftAnchor.constraint(equalTo: view.leftAnchor , constant: 16),
             collectionView.rightAnchor.constraint(equalTo: view.rightAnchor , constant: -16),
             collectionView.topAnchor.constraint(equalTo: feedLbl.bottomAnchor, constant: 10),
             collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
         ])
         

     }
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return articles.count
     }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BlogCell
         let data = articles[indexPath.row]

         cell.blogImgCell.image = UIImage(named: data.showImg)
         cell.blogImgCell.clipsToBounds = true
         cell.titlLbl.text = data.title
         cell.subTLbl.text = data.subtitle
         cell.blogLbl.text = data.blog
         cell.writerImg.image = UIImage(named: data.writerImg)
         cell.writerLbl.text = data.writerName
         return cell
     }

     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let data = articles[indexPath.row]

         let nextVC = ShowBlog()
         nextVC.showImg.image = UIImage(named: data.showImg)
         nextVC.showTit.text = data.title
         nextVC.showST.text = data.subtitle
         nextVC.showDesc.text = data.blog
         nextVC.showWriterImg.image = UIImage(named: data.writerImg)
         nextVC.showWriterName.text = data.writerName

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
         return UIEdgeInsets(top: 1, left: 0, bottom: 1, right: 0) 
     }

     func collectionView(_ collectionView: UICollectionView,
                         layout collectionViewLayout: UICollectionViewLayout,
                         minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
         return 2
     }

 }

struct Blogs {
    let showImg: String
    let title: String
    let subtitle: String
    let blog: String
    let writerImg: String
    let writerName : String
}


var articles = [
    Blogs(showImg: "1",
          title: "مدونة",
          subtitle: "ركز في الجهود.. وليس النتائج",
          blog: "نحن لا نتحكم بالنتائج، ولا نستطيع أن نُجبر الآخرين على التحكم بها لأجلنا. نحن نستطيع أن نركز على ما هو في اليد، الآن.. وكل يوم. نعرف كيف نُعلم أنفسنا المقاومة، وأن نرتكز على ما تبقى من أمل.. يومًا بيوم ودون توقف. نعرف كيف نعلم أنفسنا أننا المسؤولون الوحيدين عمّا نقوم به؛ كما نعرف أن النتائج هي المسؤولة عن نفسها. المزيد من المقاومة.. هي كل ما نحتاجه. وقبلها.. المزيد من تذكير النفس بأنها يجب أن تقاوم يومًا بيوم.",
          writerImg: "11",
          writerName: "أحمد حسن مشرف"),
    Blogs(showImg: "2",
          title: "مدونة",
          subtitle: "دراسة للبحث العلمي العربي",
          blog: "في الدول العربية ارتفع عدد الأوراق المنشورة من حوالي ثمانية آلاف ورقة في العام 2001 إلى حوالي أربعة وثمانين ألفاً في العام 2020، أي بما يزيد عن عشرة أضعاف. مجموع ما أنتجه الباحثون من الدول العربية خلال فترة الدراسة كان 601,425 ورقة بينما أنتج العالم 25,600,368 ورقة. أي أن نسبة الإنتاج العربي إلى العالمي حوالي 2.35 % علماً بأن نسبة عدد سكان الوطن العربي لسكان العالم حسب احصائيات البنك الدولي هي حوالي 5.2 %، وهو ما يدل على ضعف في الإنتاج العلمي بالنسبة للعالم. وللمقارنة، فإن انتاج جامعة كاليفورنيا لوحدها في نفس الفترة كان 635,663 ورقة بحثية، أي أكثر من انتاج الدول العربية جميعا.",
          writerImg: "22",
          writerName: "يونس بن عمارة"),
]

