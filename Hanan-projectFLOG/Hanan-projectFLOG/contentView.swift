//
//  contentView.swift
//  Hanan-projectFLOG
//
//  Created by  HANAN ASIRI on 16/03/1443 AH.
//
import SwiftUI
 
struct contentView: View {
     
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
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        contentView()
    }
}
