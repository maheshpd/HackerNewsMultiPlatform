//
//  ContentView.swift
//  HackerNewsMultiPlatform
//
//  Created by Mahesh Prasad on 28/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var manager = NetworkManager()
    
    var body: some View {
        NavigationView {
            
            List(manager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(post.title)
//                        Text(post.url ?? "")
                    }
                }
            }.navigationBarTitle("Hacker News Clone")
        }
        .onAppear {
            self.manager.getNews()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
