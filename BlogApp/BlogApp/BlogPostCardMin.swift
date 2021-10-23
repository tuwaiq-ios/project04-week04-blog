//
//  BlogPostCardMin.swift
//  BlogApp
//
//  Created by HANAN on 17/03/1443 AH.
//

import SwiftUI


struct BlogPostCardMin: View {
    @Environment(\.colorScheme) var colorSheme
    var blogPost: BlogPosts
    var body: some View {
        
        
        
        
        VStack (alignment: .leading){
            Image(blogPost.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 220)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
            
            
            VStack(spacing: 6) {
                HStack {
                    Text(blogPost.name)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(3)
                        .font(Font.title2.bold())
                        .foregroundColor(.primary)
                    Spacer()
                }
                HStack {
                    Text(blogPost.details)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(3)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .frame(height: 110)
        }
        .padding(15)
        .background(colorSheme == .dark ? Color(hex: "#121212") : Color.white)
        .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: colorSheme == .dark ? .white.opacity(0.01) : .black.opacity(0.1), radius: 15, x: 0, y: 5)
    }
}

struct BlogPostCardMin_Previews: PreviewProvider {
    static var previews: some View {
        
        BlogPostCardMin(blogPost: BlogPosts(id: 1, name: "Adobo", image: "1", details: "Smple Details"))
    }
}

//struct BlogPostCardMin: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct BlogPostCardMin_Previews: PreviewProvider {
//    static var previews: some View {
//        BlogPostCardMin()
//    }
//}
