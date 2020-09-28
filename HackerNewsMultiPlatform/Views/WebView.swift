//
//  WebView.swift
//  HackerNewsMultiPlatform
//
//  Created by Mahesh Prasad on 28/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString = urlString, let url = URL(string: urlString) else {
            print("Invalid url")
            return
        }
        
        let request = URLRequest(url: url)
        uiView.load(request)
        
    }
    
}
