//
//  showVC.swift
//  blog
//
//  Created by Macbook on 17/03/1443 AH.
//

import UIKit

class showVC : UIViewController{
    
    
    var FromVC1 : Blogs?
    
    
    
    
    //let selitem : String
   // let relitem : String
    
    //init(selitem: String,relitem:String) {
       // self.selitem = selitem
      //  self.relitem = relitem
       // super.init(nibName: nil, bundle: nil)
    //}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        let name2 = UILabel()
        name2.translatesAutoresizingMaskIntoConstraints = false
        name2.textColor = .black
        name2.font = UIFont.boldSystemFont(ofSize: 40)
        
        view.addSubview(name2)
        
        NSLayoutConstraint.activate([name2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 90 ),
             name2.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
             name2.heightAnchor.constraint(equalToConstant: 90),
             name2.widthAnchor.constraint(equalToConstant: 140)
             ])
        name2.text = FromVC1?.name
    }

}
