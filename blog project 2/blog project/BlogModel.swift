//
//  BlogModel.swift
//  blog project
//
//  Created by sally asiri on 18/03/1443 AH.
//

import Foundation

struct Blog {
    var image   : String
    var caption = "Blog"
    var title   : String
    var desc    : String
    var author  = "Sally"
    var authorName = "Sally Asiri"
}

class BlogPosts {
    static let posts = [
        
        Blog(image: "ff", caption: "🥺🥺", title: "Don't sit alone", desc: "Being alone does not make you feel lonely, loneliness means having other people and a community around you, and having a deep sense of alienation from them, in order to feel lonely we need other people."),
        
        Blog(image: "t", caption: "🤍🌸", title: "The best thing about it", desc: "The most beautiful thing is that it makes you minimize many things that used to start your energy and feelings one day, as maturity makes you rearrange things around you."),
        
        Blog(image: "f", caption: "🌹", title: "good intentions🌸", desc: "White intentions arrange for their owner the most beautiful fates, mock the best events for him, plant roses in his paths, and create beauty in his days"),
        
        Blog(image: "s", caption: "🌸", title: "keep your friends", desc: "Keep your friends, no matter how much they appreciate each other's circumstances. Understand that we are human beings, we have mood swings and go through circumstances, and the true friend is not upset with his owner, stops with him and helps him on himself, so that he does not become a burden on him, so let you be true friends who seek them."),
        
        Blog(image: "ss", caption: "😊🤍", title: "In the presence of someone..!", desc: "In the presence of someone, you may feel that communication was created for him out of excessive comfort, and you talk to him from the strain of conversation and responses that make you aware of the value of having someone who understands you without elongating or explaining."),
        
    
        
    
        
    
    
    ]
}
