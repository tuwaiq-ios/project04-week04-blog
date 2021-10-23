//
//  BlogPostCardMain.swift
//  Blog
//
//  Created by sara al zhrani on 17/03/1443 AH.
//

import SwiftUI

struct BlogPostCardMain: View {
    @Environment(\.colorScheme) var colorSchheme
    var blogPost: BlogPosts
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(blogPost.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 220)
                .frame(maxWidth: UIScreen.main.bounds.width - 80)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            VStack(spacing:6) {
                HStack {
                    Text(blogPost.name)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(3)
                        .font(Font.title2.bold())
                        .foregroundColor(.primary)
                    Spacer()
                }
                HStack{
                    Text(blogPost.details)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(3)
                    .font(Font.title2.bold())
                    .foregroundColor(.secondary)
                }
                
                
            }
            .frame(height:110)
        }
        
        
    .padding(15)
    .background(colorSchheme == .dark ? Color(hex: "#121212") : Color.white)
    .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    .shadow(color: colorSchheme  == .dark ? .white.opacity(0.01) : .black.opacity(0.01), radius: 15, x: 0, y: 5)

    }
}

struct BlogPostCardMain_Previews: PreviewProvider {
    static var previews: some View {
        BlogPostCardMain(blogPost: BlogPosts(id: 1, name: "big dish", image: "0", details: "sample Details"))
    }
}
