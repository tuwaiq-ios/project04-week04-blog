//
//  ContentView.swift
//  Blog
//
//  Created by sara al zhrani on 17/03/1443 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
          MainView( )
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            AllPosts()
                .tabItem{
                    Image(systemName: "list.place")
                    Text("see all")
                }
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
