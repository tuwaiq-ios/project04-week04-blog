
import UIKit

class showVC : UIViewController{
    
    let imageshow = UIImageView()
        let namebs = UILabel()
        let mssshow = UILabel()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .black



            imageshow.layer.masksToBounds = true
            imageshow.layer.cornerRadius = 5.0
            imageshow.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(imageshow)
            NSLayoutConstraint.activate([
             imageshow.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
             imageshow.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
             imageshow.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
             imageshow.heightAnchor.constraint(equalToConstant: 350)
            ])

            namebs.textColor = .blue
            namebs.font = .boldSystemFont(ofSize: 20)
            namebs.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(namebs)
            NSLayoutConstraint.activate([
                namebs.topAnchor.constraint(equalTo: imageshow.bottomAnchor, constant: 5),
                namebs.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5)
            ])

            mssshow.font = .systemFont(ofSize: 20)
            mssshow.numberOfLines = 12
            mssshow.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(mssshow)
            NSLayoutConstraint.activate([
                mssshow.topAnchor.constraint(equalTo: namebs.bottomAnchor, constant: 8),
                mssshow.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
                mssshow.heightAnchor.constraint(equalToConstant: 300),
                mssshow.widthAnchor.constraint(equalToConstant: 380)
            ])
        }

    }
