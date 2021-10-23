//
//  SwiftUIView.swift
//  Blog App-Afnan-week4
//
//  Created by Fno Khalid on 17/03/1443 AH.
//

import SwiftUI
 
struct ContentView: View {
     
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
        ContentView()
    }
}

