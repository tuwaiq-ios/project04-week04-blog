//
//  Contentview.swift
//  BlogApp
//
//  Created by HANAN on 17/03/1443 AH.
//



import SwiftUI
struct Contentview: View {
    
    let gradient = Gradient(colors: [.primary,.init(white: 40.8)])
    var body: some View {
        VStack {
            
            HStack{
                
                VStack{
                    Spacer()
                    Image("11")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
//                        .frame(width:200, height:200)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    Text("Hanan").font(.system(size: 18)).bold().foregroundColor(.black)
                        .padding(.top,10)
                    Text("@Hanan").font(.system(size: 15)).bold().foregroundColor(.black)
                        .padding(.top,3)
                       

                }
                .padding()
                .frame(width:200, height:200)
//                .clipShape(Circle())
              
            }
        }
        
        .background(LinearGradient(gradient: gradient, startPoint:.top , endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        
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



struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        Contentview()
    }
}


//struct Contentview: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct Contentview_Previews: PreviewProvider {
//    static var previews: some View {
//        Contentview()
//    }
//}
