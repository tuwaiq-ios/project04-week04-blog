//
//  ViewController.swift
//  BlogAppProject
//
//  Created by Tsnim Alqahtani on 17/03/1443 AH.
//
import SwiftUI

struct BlogPostCardList: View {
    var blogPost: BlogPosts
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(blogPost.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 180)
                .frame(maxWidth: UIScreen.main.bounds.width - 60)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
           
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
        }
        .frame(maxWidth: UIScreen.main.bounds.width - 60, alignment: .leading)
        .padding()
        
                
       
    }
}

struct BlogPostCardList_Previews: PreviewProvider {
    static var previews: some View {
        BlogPostCardList( blogPost: BlogPosts(id: 1, name: "Adobo", image: "1", details: "Sample Details",Pimage: "a1",person: "mo"))
    }
}
