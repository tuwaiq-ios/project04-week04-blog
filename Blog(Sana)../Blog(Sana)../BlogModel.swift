//
//  BlogModel.swift
//  Blog(Sana)..
//
//  Created by Sana Alshahrani on 18/03/1443 AH.
//

import Foundation

struct Blog {
    var image   : String
    var caption = "Blog"
    var title   : String
    var desc    : String
    var author  = "sana"
    var authorName = "Sana Alshahrani"
}

class BlogPosts {
    static let posts = [
    
        Blog(image: "choco", caption: "blog", title: "الشوكولاتة الداكنة وخسارة الوزن",
             desc: "مدونة رجيم صحي على عكس المتوقع في ان استبعاد الشوكلاتة في فترة ال رجيم او عدم تناولها فان دراسة جديدة اتت لتؤكد ما سبقها من دراسات حول الشوكولاتة الداكنة قليلة السكر والتي تتميز بقدرتها على مساعدتك لحرق الدهون"),
        
        
        Blog(image: "g", caption: "blog", title: "تأثير جوز الهند على فقدان الوزن",
             desc: "زيت جوز الهند يمكن ان يكون له تاثير إيجابي على أولئك الذين يعانون من زيادة الوزن او السمنة,يمكنك إضافته للطعام المطهو او إضافته إلى العصائر او وضعه على السلطة "),
             
        
        Blog(image:  "عسل", caption: "blog", title: "تأثير العسل على فقدان الوزن",
             desc: "همية العسل الطبيعي وفوائده التي لا يمكننا الجدال فيها، كما اثبت أهميته في تعزيز جهاز المناعي والحماية ضد الحساسية وتهدئة السعال ونزلات البرد وحتى قتل البكتيريا المقاومة للمضادات الحيوية.")
             
           
    
    ]
}

