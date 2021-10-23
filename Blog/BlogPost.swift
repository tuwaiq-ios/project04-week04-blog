//
//  BlogPost.swift
//  Blog
//
//  Created by sara al zhrani on 17/03/1443 AH.
//

import Foundation
struct BlogPosts : Identifiable{
    var id : Int
    var name : String
    var image : String
    var details : String
    
}
var latestpost = [
    BlogPosts(id: 0, name: "شلالات الراين", image: "0", details: "شلالات الراين (بالألمانية: Rheinfall) هو أكبر شلال في أوروبا.[1] يقع على نهر الراين شمال سويسرا بين كانتونات شافهاوزن وزيورخ . عرضها 150 متر وارتفاع 23 متر . في أشهر الشتاء، يبلغ متوسط تدفق المياه 250 متر مكعب في الثانية، بينما في فصل الصيف، يبلغ متوسط تدفق المياه 700 متر مكعب في الثانية. وقد سجلت أعلى قياس تدفق في عام 1965 حيث بلغت 1،250 متر مكعب في الثانية ، وأقلها في عام 1921 حيث وصلت 95 متر مكعب في ثانية . "),
    
    BlogPosts(id: 1, name: "بحيرة كومو", image: "1", details: "تقع بحيرة كومو على بعد حوالي 50كم عن ميلانو؛ تحديداً بين مقاطعتي كومو وليكو، وتُعتبر البحيرة الأعمق في إيطاليا حيث يصل عمقها إلى 410م، كما تحتل المركز الثالث من حيث الحجم بين بحيرات إيطاليا بعد كلٍ من بحيرتي غاردا وماجيوري، وتندرج بحيرة كومو ضمن بحيرات إقليم لومبارديا، وتقع مدينة كومو في الجهة الجنوبية الغربية للبحيرة، وتقع ليكو على الجهة الجنوبية الشرقية، بينما توجد كوليكو في الجهة الشمالية.[١٣]"),
    
    BlogPosts(id: 2, name: "متحف اللوفر", image: "2", details: "يعتبر متحف اللوفر من أكبر المتاحف الفنية حول العالم، ويعد أهم المعالم السياحية في باريس، ويعتبر من أول الوجهات السياحية في فرنسا. يعد متحف اللوفر من أكثر المتاحف زيارة حول العالم، حيث انه استقبل عدد هائل من السياح، والذين بلغت أعدادهم أكثر من عشرة مليون زائر، فهو يمثل الفئة الإولي للجذب السياحي عالميا. "),
    BlogPosts(id: 3, name: " أهرامات الجيزة", image: "30", details: "تعد أهرامات الجيزة من أبرز المعالم  السياحية في مصر التى تعد من عجائب الدنيا السبع فى العالم القديم, وهما عبارة عن ثلاث أهرامات متفاوتة الحجم أكبرهما يدعى خوفو و الأوسط خفرع و أصغرهما منقرع بنيت هذه الأهرامات الثلاثة لتكون مقابر لدفن ملوك الفراعنة الأقوياء فى العصر القديم."),
    
    BlogPosts(id: 4, name: "أوبود - بالي - إندونيسيا", image: "40", details: "تتصدر جزيرة بالي الإندونيسية العديد من القوائم السياحية، وترحب هذه الجزيرة بالغربيين لأكثر من قرن من الزمان، حيث يستمتع السياح بمناظر العصر الجديد والثقافات التقليدية إلى جانب الحفلات المميزة على شاطئ البحر، وتقع قرية اوبود الخضراء على قمة تل محاطة بالعديد من حقول الأرز جميلة المنظر، وأيضاً كانت قرية اوبود مركزاً لليوغا والمأكولات الآسيوية والإحتفالات العائلية الجميلة، وأصبت أكثر شهرة بسبب الفيلم المميز (كل، صلي، حب)."),
    
    
    BlogPosts(id: 5, name: " برج خليفة ", image: "50", details: "ي حين أن جميع دول الإمارات العربية المتحدة تفتخر بالتفوق المعماري، فإن أطول الأبراج المستقبلية  و أطول مبنى في العالم  هو برج خليفة الفضي والزجاجي النحيف والفاخر، على الرغم من أنه يمكنك رؤيته من كل مكان، فإن تجربة سطح المراقبة في الطابق 148 بدون حواجز، والشعور بالنسيم الذي يمر عبر الحواجز الزجاجية الجزئية، هي مغامرة مميزة ومفعمة بالنشاط والحيوية،كما ويعتقد الكثيرون أنها تستحق رسوم الدخول المرتفعة. "),
    
    
    BlogPosts(id: 6, name: "برج بيزا المائل ", image: "60", details: "ارتفع برج بيزا الذي يبلغ ارتفاعه 197 قدمًا في كامبو دي ميراكولي بين القرنين الثاني عشر والرابع عشر لمرافقة الكاتدرائية والمعمودية الرومانية، وعلى الرغم من أنه بدأ يميل على الفور، إلا أن هيكل برج بيزا الرخامي المكون من ثمانية طوابق والمحاط بأقواس و 207 عمود دعم، كان يعتبر إنجازاً هندسياً، و بعد قرون من الجهود المبذولة لتصحيحه، أعيد افتتاح البرج في عام 2001 بعد ثلاث سنوات من وضع الأوزان على البرج، وإزالة التربة من أسفل الأساس الذي نجح في تقليل الميل."),
]

var featuredpost = [
    
    BlogPosts(id: 0, name: "شلالات الراين", image: "0", details: "شلالات الراين (بالألمانية: Rheinfall) هو أكبر شلال في أوروبا.[1] يقع على نهر الراين شمال سويسرا بين كانتونات شافهاوزن وزيورخ . عرضها 150 متر وارتفاع 23 متر . في أشهر الشتاء، يبلغ متوسط تدفق المياه 250 متر مكعب في الثانية، بينما في فصل الصيف، يبلغ متوسط تدفق المياه 700 متر مكعب في الثانية. وقد سجلت أعلى قياس تدفق في عام 1965 حيث بلغت 1،250 متر مكعب في الثانية ، وأقلها في عام 1921 حيث وصلت 95 متر مكعب في ثانية . "),
    
    
    BlogPosts(id: 1, name: "بحيرة كومو", image: "1", details: "تقع بحيرة كومو على بعد حوالي 50كم عن ميلانو؛ تحديداً بين مقاطعتي كومو وليكو، وتُعتبر البحيرة الأعمق في إيطاليا حيث يصل عمقها إلى 410م، كما تحتل المركز الثالث من حيث الحجم بين بحيرات إيطاليا بعد كلٍ من بحيرتي غاردا وماجيوري، وتندرج بحيرة كومو ضمن بحيرات إقليم لومبارديا، وتقع مدينة كومو في الجهة الجنوبية الغربية للبحيرة، وتقع ليكو على الجهة الجنوبية الشرقية، بينما توجد كوليكو في الجهة الشمالية.[١٣]"),
    
    
    ]
