
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
            .navigationTitle("All blog posts")
            .listStyle(InsetListStyle())
        }
      
    }
}

struct AllPosts_Previews: PreviewProvider {
    static var previews: some View {
        AllPosts()
    }
}
