//
//  BlogPosts.swift
//  bolg
//
//  Created by MacBook on 17/03/1443 AH.
//

import Foundation

struct BlogPosts: Identifiable {
    var id : Int
    var name : String
    var image : String
    var details: String
}

var letestpost = [
BlogPosts(id: 0, name: "High City", image: "images 7", details: "It is a beautiful place and the view is more beautiful, consisting of several restaurants, cafes, a children’s play store, and also a hotel for accommodation."),
BlogPosts(id: 1, name: "fgg", image: "4", details: "cnn gcm"),
BlogPosts(id: 2, name: "x", image: "5", details: "fjn"),
BlogPosts(id: 3, name: "dx", image: "6", details: "vc "),
BlogPosts(id: 4, name: "v", image: "7", details: "cn"),
BlogPosts(id: 5, name: "c", image: "8", details: "cb"),
]

var featuredposts = [
    BlogPosts(id: 0, name: "Asser", image: "images 7", details: "It is a beautiful place and the view is more beautiful, consisting of several restaurants, cafes, a children’s play store, and also a hotel for accommodation."),
    BlogPosts(id: 1, name: "HIgh City", image: "6", details: "It is a beautiful place and the view is more beautiful, consisting of several restaurants, cafes, a children’s play store, and also a hotel for accommodation."),
   
]
