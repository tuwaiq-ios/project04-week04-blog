//
//  BlogModel.swift
//  blog project
//
//  Created by Maram Al shahrani on 18/03/1443 AH.
//

import Foundation

struct Blog {
    var image   : String
    var caption = "Blog"
    var title   : String
    var desc    : String
    var author  = "Maram"
    var authorName = "Maram ALshahrani"
}

class BlogPosts {
    static let posts = [
        
        Blog(image: "one piece", caption: "blog", title: "One Piece Review", desc: "One Piece (Japanese: ワンピース, Rumaji: Wan Pīsu) is a Japanese manga series written and illustrated by Eiichiro Oda. The manga series has been in Weekly Shonen Jump since August 4, 1997; The single chapters are published in tankōbon volumes by Shueisha with the first edition being on December 14, 1997, and the release of the 72nd volume in November 2013. One Piece follows the adventures of Monkey D. Luffy, a young boy whose body acquires the properties of rubber after accidentally eating a Devil Fruit (ocean fruit in Arabic dubbing). official), and his assorted crew of pirates, the Straw Hat Pirates. Luffy explores the ocean in search of the greatest treasure known as One Piece to become the second Pirate King."),
        
        Blog(image: "attack on titan", caption: "blog", title: "Attack on Titan Review", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        
        Blog(image: "neverland", caption: "blog", title: "neverland Review", desc: "The Promised Neverland (約束のネバーランド) is a Japanese shōnen manga series written by Kayo Shirai and illustrated by Busuka Demizu. Published by Shueisha in Weekly Shonen Jump, August 1, 2016, until June 15, 2020. Manga was produced into an anime television series by CloverWorks Studio, aired on January 11, 2019 and ran until March 26, 2020, with 23 episodes."),
        
        Blog(image: "Naruto", caption: "blog", title: "Naruto Review", desc: "Naruto (Japanese: ナルト and Romaji: NARUTO) is the title of the completed Japanese manga series written and illustrated by Masashi Kishimoto. The story revolves around the teenage ninja Naruto Uzumaki, who found himself shunned by the people of his village because of the Kyuubi inside him, so he set his sights on getting the title of Hokage, the title given to the village leader and the strongest ninja in it, to gain the respect and recognition of everyone.")
             
    
    ]
}
