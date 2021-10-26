//
//  BlogModel.swift
//  blog UIkit
//
//  Created by MacBook on 20/03/1443 AH.
//

import Foundation


struct Blog {
    var image   : String
    var caption = "Blog"
    var title   : String
    var desc    : String
    var author  = "FoFa"
    var authorName = "Fatimah"
}

class BlogPosts {
    static let posts = [
        
        Blog(image: "1", caption: "🥺", title: "ABHA CAPITAL OF ARAB", desc: " Abha, the breathtaking city which is floating 2200m above sea level, is a real astonishment to the senses for enthusiasts involved in Arab tourism. It is profoundly cooler, and the neat green lawns, marigolds, mountains and mist also make a staggering impression. For Saudis, the cold, misty and rainy areas are a novelty and they flock here along with Gulf Arabs to escape the unyielding heat and humidity of summer of the Middle East."),
        
        Blog(image: "2", caption: "🌸", title: "The best thing about it", desc: "There are a variety of activities that encourage tourists to come. The following are the best places to visit in Abha and include the following cities:Best places in Abha:The new Abha Resort, in addition to Al Sadd Lake, where there is a series of restaurants and gardens, in addition to the great Abha Palace, which overlooks the lake, there is also the ride of the cable car and watching the scenery from a higher and more beautiful view.Watch the exciting village that was built in the middle of a road known as the Lower Face, the owners of this village lived after they expelled the othman from it, and they lived in isolation from the others, until they were discovered by a plane belonging to the Saudi army."),
        
        Blog(image: "3", caption: "🌹", title: "RIjal ALmaa", desc: "Rijal village located in the Assir Region, and is the capital of the Rijal Almaa Province. The village was a natural corridor linking those coming from Yemen and the Levant to Makkah and Madinah which makes it an important regional commercial center. The village consists of about 60 palaces built from natural stone, clay and wood, and the palaces consists of several floors. The Saudi Commission for Tourism and Antiquities has adopted a rehabilitation project for the village with the participation of partners from the public and private sectors. The village contains a heritage museum established by the efforts of the local inhabitants in order to save their regional heritage, and they have turned one of the forts into the museum headquarters since 1985. The Village of Rijal Almaa is located 45 km west of the city of Abha, a mountainous area bordered to the east by Al-Souda Center, and from the North Mahayel Asir province, and from the South Al-Darb province, on the west by the Red Sea."),
        
        Blog(image: "6", caption: "🌸", title: "Art of Tree", desc: "KSaudi Arabia’s city of Abha has been covered in a blanket of purple as its trees bloom, photographs shared online showed on Friday.Abha is the capital of Saudi Arabia’s southwestern Asir province and is a popular tourist destination for Saudi Arabians due to its mild climate, stemming from its location in hills 2,270 meters above sea level."),
        
        Blog(image: "9", caption: "🤍", title: "HIGH CITY", desc: "Abha City A visit to Abha Citys attraction like Al Muftaha village, Shada Palace, Visitors Center and Tuesday's traditional marketplace. You can during your sight seeing tour enjoy a cable car ride from New Abha to the Green Mountain passing through the parks of Abou Khayal where you will find Tihama Valleys and spectacular view of Abha City. Children can enjoy the entertainment and water sports provided at New Abha resort. "),
    
    ]
}
