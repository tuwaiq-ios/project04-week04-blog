//
//  Posts.swift
//  SaraS.Blog
//
//  Created by SARA SAUD on 3/18/1443 AH.
//



import SwiftUI

struct AllPosts: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(latestpost) {post in
                    NavigationLink(destination: BlogPostView(blogPost: post)) {
                    BlogPostCardList(blogPost: post)
                }
                }
            }
            .navigationTitle("Plume Blogs")
            .listStyle(InsetListStyle())
        }
      
    }
}

struct AllPosts_Previews: PreviewProvider {
    static var previews: some View {
        AllPosts()
    }
}
