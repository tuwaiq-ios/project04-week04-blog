//
//  ViewController.swift
//  Instgram
//
//  Created by sally asiri on 15/03/1443 AH.
//

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
                    Image(systemName: "gear")
                    Text("Setting")
                }
}
}
}



struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        Contentview()
    }
}
