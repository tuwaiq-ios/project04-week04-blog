//
//  MainView.swift
//  bolg
//
//  Created by MacBook on 17/03/1443 AH.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView{
            ScrollView{
            //featured article
            VStack{
                HStack{
                    Text("Featured posts")
                        .font(.title.bold())
                    Spacer()
                    
                }
                    LazyVStack {
                        ForEach(featuredposts) { post in
                            //Text(post.name)
                            NavigationLink(destination: BlogPostView(blogPost: post)){
                          BlogPostCardMain(blogPosts: post)
                            }
                        }
                            
                        }
                    }
            .padding(.horizontal, 15)
            .padding(.vertical, 30)
        
            
            //list articles
            VStack {
                HStack {
                    Text("latest post")
                        .font(.title.bold())
                    Spacer()
                }
                .padding(.horizontal, 15)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 15) {
                        
                        if letestpost.count >= 3 {
                            ForEach(letestpost[0...2]) {
                                post in
                                NavigationLink(destination: BlogPostView(blogPost: post)){
                                BlogPostCardMain(blogPosts: post)
                                }
                        }
                        }else {
                            ForEach(letestpost[0..<letestpost.count]) { post in
                                NavigationLink(destination: BlogPostView(blogPost: post)){
                                    BlogPostCardMain(blogPosts: post)
                                }
                        }
                        }
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 30)
                }
                .frame(height: 420)
                Spacer()
            }
            .padding(.bottom, 40)
            
        }
            
            .navigationBarTitle("Home")
            .navigationBarItems(
                trailing: Button(action: {}) {Image(systemName:"0")
                    .resizable()
                    .frame(width: 30, height: 30)
            })
            
    }
           
}

     
    }
    
        
        
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

