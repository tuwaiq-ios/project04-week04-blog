//
//  ContentView.swift
//  bolg
//
//  Created by MacBook on 17/03/1443 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem{
                    Image(systemName: "back")
                     Text("Home")
                }
            AllPosts()
                .tabItem{
                    Image(systemName: "list.dash")
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
