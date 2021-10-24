//
//  ViewController.swift
//  BlogAppProject
//
//  Created by Tsnim Alqahtani on 17/03/1443 AH.
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
BlogPosts(id: 0, name: "time", image: "a1", details: "time is the most valuable thing you have, there is nothing equivalent to losing time, think this way from the time you read these letters until the end of your life, nothing is as valuable as the value of time, this is the greatest lesson I have learned in my life, and with this we must deal with it with caution And that it does not motivate us to rush and do reckless actions that make us lose all the missed times that I spent in building what you are building, if I focused on my blog, I would find that every year at the beginning of the year I make posts that indicate time and goals specifically, or a path I want to follow with a prior sense of the value of time", Pimage: "a1", person: "ts"),
BlogPosts(id: 1, name: "Bistek Tagalog", image: "a2", details: "here we always talk about the normal rate, there may have been times when you need to work more than seven hours a day, which is by the way the European average, and when we mean about seven hours, it is actually seven hours of work that does not include coffee sessions or getting out of work and back to work Time is entirely devoted to work, and if the place where you work is nothing to do more than four or five hours, you have to do other work related to work, read a book about work, do training for other people, do work studies, here is meant to be connected With your brain working for seven hours, we must stick to that time throughout the five working days in order to be successful.",Pimage: "a1",person: "je"),

BlogPosts(id: 2, name: "Bistek Tagalog", image: "a3", details: "An hour a day is enough to make a new person out of you. After one year has passed, it is important to do this point and basically, because it is one of the most important reasons for your survival, and for keeping your mind at an active level, to learn new skills even if you do not like them, such as learning a new language, But you will need it, learn home chores, any skill or topic that you seriously specialize in whether you listen to podcasts, or attend courses on open source sites for education, the important thing is to keep your mind active through development even if this is forced, it is like treatment that you do not taste but you take it In order to save you, life in the twenty-first century is no longer what it was in previous centuries, skills have become essential things to be able to live.",Pimage: "a1", person: "Afnan"),

BlogPosts(id: 3, name: "Bistek Tagalog", image: "0", details: "A dish made of strips of salted and peppred sirloin beef",Pimage: "a1", person: "renad"),

BlogPosts(id: 4, name: "Bistek Tagalog", image: "0", details: "A dish made of strips of salted and peppred sirloin beef", Pimage: "a1", person: "tsnim"),

BlogPosts(id: 5, name: "Bistek Tagalog", image: "0", details: "A dish made of strips of salted and peppred sirloin beef", Pimage: "a1", person: "sara"),

BlogPosts(id: 6, name: "Bistek Tagalog", image: "0", details: "A dish made of strips of salted and peppred sirloin beef", Pimage: "a1",person: "REMA"),

]
 var featuredpost = [
    BlogPosts(id: 0, name: "Time", image: "a1", details: "time is the most valuable thing you have, there is nothing equivalent to losing time, think this way from the time you read these letters until the end of your life, nothing is as valuable as the value of time, this is the greatest lesson I have learned in my life, and with this we must deal with it with caution And that it does not motivate us to rush and do reckless actions that make us lose all the missed times that I spent in building what you are building, if I focused on my blog, I would find that every year at the beginning of the year I make posts that indicate time and goals specifically, or a path I want to follow with a prior sense of the value of time",Pimage: "i1",person: "tasnim"),

    BlogPosts(id: 1, name: "New person", image: "a2", details: "An hour a day is enough to make a new person out of you. After one year has passed, it is important to do this point and basically, because it is one of the most important reasons for your survival, and for keeping your mind at an active level, to learn new skills even if you do not like them, such as learning a new language, But you will need it, learn home chores, any skill or topic that you seriously specialize in whether you listen to podcasts, or attend courses on open source sites for education, the important thing is to keep your mind active through development even if this is forced, it is like treatment that you do not taste but you take it In order to save you, life in the twenty-first century is no longer what it was in previous centuries, skills have become essential things to be able to live.",Pimage: "i2",person: "tasnim"),

 ]
