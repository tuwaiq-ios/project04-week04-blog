//
//  BlogModel.swift
//  blog project
//
//  Created by PC on 18/03/1443 AH.
//

import Foundation

struct Blog {
    var image   : String
    var caption = "view"
    var title   : String
    var desc    : String
    var author  = "منيره"
    var authorName = "منيره"
    var isLiked : Bool
}

class BlogPosts {
    static var posts = [
        
        
        Blog(image:"1", caption: "view", title: "شاعر", desc: "خبر صغير ..حادث قطار ..مكتوب في السطر الاخير .. ", isLiked: false),
        
        Blog(image: "2", caption: "view", title: "شاعره", desc: "في عيني كثير لايمطر .. وفي وصوت فيروز بطريقي لكل مكان ", isLiked: false)
        
    
    ]
}
