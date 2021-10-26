//
//  AllPosts.swift
//  bolg
//
//  Created by MacBook on 17/03/1443 AH.
//

import SwiftUI

struct AllPosts: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(letestpost) { post in
                    NavigationLink(destination: BlogPostView(blogPost: post)){
                        BlogPostCardList(blogPost: post)
                        
                    }
                }
            }
            .navigationTitle("All blog Post")
            .listStyle(InsetListStyle())
        }
    }
}

struct AllPosts_Previews: PreviewProvider {
    static var previews: some View {
        AllPosts()
    }
}
