//
//  BlogPosts.swift
//  Instgram
//
//  Created by sally asiri on 15/03/1443 AH.
//

import Foundation
struct BlogPosts :Identifiable {
    
    var id : Int
    var name : String
    var image : String
    var details : String
    var Pimage : String
    var person : String
 
}
var latestpost = [
    BlogPosts(id:0, name: "Don't sit alone", image: "fs", details: "Being alone does not make you feel lonely, loneliness means having other people and a community around you, and having a deep sense of alienation from them, in order to feel lonely we need other people.",Pimage: "soso", person: "sally"),
    
BlogPosts(id: 1 , name: "The best thing about it..", image: "sf", details: " The most beautiful thing is that it makes you minimize many things that used to start your energy and feelings one day, as maturity makes you rearrange things around you.",Pimage: "fofo", person: "hanan"),

BlogPosts(id: 2, name: "I don't know where I'm going?", image: "fff", details: " I am like a speeding spectacle, no one knows the tracks of my roads, I suddenly appear and suddenly disappear, I leave my mark in all the places where I turn, I do not know what I want and where I am going? I am looking for a place where I can escape from reality without confronting fake people.",Pimage: "s5", person: "jwaher"),

BlogPosts(id: 3, name: "good intentions🌸", image: "ss", details: " White intentions arrange for their owner the most beautiful fates, mock the best events for him, plant roses in his paths, and create beauty in his days.",Pimage: "ss", person: "aml"),

BlogPosts(id: 4, name: "keep your friends", image: "sss", details: " Keep your friends, no matter how much they appreciate each other's circumstances. Understand that we are human beings, we have mood swings and go through circumstances, and the true friend is not upset with his owner, stops with him and helps him on himself, so that he does not become a burden on him, so let you be true friends who seek them.",Pimage: "mm", person: "sally"),

BlogPosts(id: 5, name: "In the presence of someone..!", image: "f4", details: "In the presence of someone, you may feel that communication was created for him out of excessive comfort, and you talk to him from the strain of conversation and responses that make you aware of the value of having someone who understands you without elongating or explaining.",Pimage: "f4", person: "sally"),

]
 var featuredpost = [
    BlogPosts(id: 0, name: "Don't sit alone", image: "fs", details: " Being alone does not make you feel lonely, loneliness means having other people and a community around you, and having a deep sense of alienation from them, in order to feel lonely we need other people.",Pimage: "soso", person: "sally"),

    BlogPosts(id:3, name: "good intentions🌸", image: "ss", details: "White intentions arrange for their owner the most beautiful fates, mock the best events for him, plant roses in his paths, and create beauty in his days.",Pimage: "aml", person: "Amal"),
    
BlogPosts(id: 1 , name: "The best thing about it..", image: "sf", details: " The most beautiful thing is that it makes you minimize many things that used to start your energy and feelings one day, as maturity makes you rearrange things around you.",Pimage: "fofo", person: "hanan"),
    

 ]
