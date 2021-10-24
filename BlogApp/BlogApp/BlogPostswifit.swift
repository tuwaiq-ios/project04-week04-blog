//
//  BlogPostswifit.swift
//  BlogApp
//
//  Created by Kholod Sultan on 17/03/1443 AH.
//
import Foundation
 
struct BlogPosts : Identifiable {
      
    var id : Int
    var name : String
    var image : String
    var details : String
    
}
  
var latestpost = [
  
    BlogPosts(id: 0, name: "Club sandwich", image: "8", details: " a sandwich of three slices of bread with two layers of meat (such as turkey) and lettuce, tomato, and mayonnaise"),
    BlogPosts(id: 1, name: "cheesecake recipe", image: "1", details: "A classic cheesecake is creamy, silky, and smooth. My cheesecake recipe is not quite as dense as New York cheesecake, but boasts equal richness and is just as special. It’s thick, it’s velvety, and there’s no denying its decadence. When I imagine what Chandler and Rachel’s stolen cheesecake tastes like, it’s this!"),
    BlogPosts(id: 2, name: "Pasta", image: "2", details: "This delicious pasta with zucchini is ready in about 15 minutes and requires only 5 ingredients. A simple recipe that turns plenty of zucchini into a perfect family meal."),
    BlogPosts(id: 3, name: "Ginisang Togue", image: "3", details: "Ginisang Togue is basically Sauteed Mung Bean Sprout with carrots, bell pepper, shrimp, and tofu."),
    BlogPosts(id: 4, name: "Lintle Soup (Lintle)", image: "4", details: "Munggo or Mung bean (or even green bean to some) is a seed of Vigna radiata, a plant native to India and Pakistan. Since the plant originated in Asia, it was easy to spread along the nearby countries. This seed became a hit when it reached the Philippines."),
    BlogPosts(id: 5, name: "chicken Estofado (Sweet chicken Stew)", image: "5", details: "chicken Estofado with saba bananas, carrots, Chinese sausage, and a sweet and savory sauce. Perfect with steamed rice!"),
    BlogPosts(id: 6, name: "Pata Tim", image: "6", details: "Brimming in a pork stew infused with aromatic peppercorn, sesame oil and soy sauce, Pata Tim is a classic Filipino dish with traces in Chinese cuisine"),
    BlogPosts(id: 7, name: "Pancit Palabok", image: "7", details: "Pancit Palabok is a noodle dish with shrimp sauce and topped with several ingredients such as cooked shrimp, boiled pork, crushed chicharon, tinapa flakes, fried tofu, scallions, and fried garlic. "),
]
 
var featuredpost = [
  
    BlogPosts(id: 0, name: "Club sandwich", image: "8", details: " a sandwich of three slices of bread with two layers of meat (such as turkey) and lettuce, tomato, and mayonnaise"),
    BlogPosts(id: 1, name: "Oats", image: "9", details: "It all starts with the simplest ingredients. You’ll need old fashioned oats or rolled oats, milk, water and a dash of salt. Those are the only 4 ingredients you need to to make oatmeal."),
]
