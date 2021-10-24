//
//  ContentView.swift
//  SaraS.Blog
//
//  Created by SARA SAUD on 3/18/1443 AH.
//

import Foundation

import SwiftUI
struct Contentview: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                }
            AllPosts()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("See all")
                }
            
            AllPosts()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
}
}
}



struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        Contentview()
    }
}
