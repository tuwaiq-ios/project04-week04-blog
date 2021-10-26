//
//  BlogPostCardList.swift
//  Instgram
//
//  Created by sally asiri on 16/03/1443 AH.
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
        BlogPostCardList( blogPost: BlogPosts(id: 5, name: "In the presence of someone..!", image: "f4", details: "In the presence of someone, you may feel that communication was created for him out of excessive comfort, and you talk to him from the strain of conversation and responses that make you aware of the value of having someone who understands you without elongating or explaining.",Pimage: "aml",person: "sally"))
    }
}
