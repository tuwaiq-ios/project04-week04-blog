//
//  BlogPostView.swift
//  Instgram
//
//  Created by sally asiri on 16/03/1443 AH.
//


import SwiftUI

struct BlogPostView: View {
    var blogPost: BlogPosts
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Image(blogPost.image)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 310)
                        .frame(maxWidth: UIScreen.main.bounds.width)
                        .clipped()
                    VStack {
                        HStack {
                            Text(blogPost.name)
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                                .padding(.vertical, 15)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        Text(blogPost.details)
                            .multilineTextAlignment(.leading)
                            .font(.body)
                            .foregroundColor(Color.primary.opacity(0.9))
                            .padding(.bottom, 25)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                        }
            .navigationBarTitleDisplayMode(.inline)
                    }
                }
}


struct BlogPostView_Previews: PreviewProvider {
    static var previews: some View {
        BlogPostView( blogPost: BlogPosts(id: 2, name: "I don't know where I'm going?", image: "fff", details: "I am like a speeding spectacle, no one knows the tracks of my roads, I suddenly appear and suddenly disappear, I leave my mark in all the places where I turn, I do not know what I want and where I am going? I am looking for a place where I can escape from reality without confronting fake people.",Pimage: "fff",person: "jwaher"))
    }
}
