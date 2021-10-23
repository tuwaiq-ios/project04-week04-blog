//
//  MainView.swift
//  Blog App-Afnan-week4
//
//  Created by Fno Khalid on 17/03/1443 AH.
//

import SwiftUI

struct MainView: View {
     
    var body: some View {
         
        NavigationView {
            ScrollView {
                // featured article
                VStack {
                    HStack {
                        Text("Featured posts")
                            .font(.title.bold())
                        Spacer()
                    }
                    LazyVStack {
                        ForEach(featuredpost){post in
                            //Text(store.name)
                            NavigationLink(destination: BlogPostView(blogPost: post)) {
                              BlogPostCardMain(blogPost: post)
                            }
                        }
                    }
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
                 
                // latest articles
                VStack {
                    HStack {
                        Text("Latest posts")
                            .font(.title.bold())
                        Spacer()
                    }
                    .padding(.horizontal, 15)
                     
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 15) {
                             
                            if latestpost.count >= 3 {
                                ForEach(latestpost[0...2]) { post in
                                    NavigationLink(destination: BlogPostView(blogPost: post)) {
                                        BlogPostCardMain(blogPost: post)
                                    }
                                }
                                 
                            }else {
                                ForEach(latestpost[0..<latestpost.count]) { post in
                                    NavigationLink(destination: BlogPostView(blogPost: post)) {
                                        BlogPostCardMain(blogPost: post)
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
                trailing: Button(action: {}) { Image(systemName: "arrow.clockwise.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            })
        }
    }
}

