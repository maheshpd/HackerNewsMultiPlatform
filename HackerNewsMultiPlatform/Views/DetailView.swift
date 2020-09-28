//
//  DetailView.swift
//  HackerNewsMultiPlatform
//
//  Created by Mahesh Prasad on 28/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.apple.com")
    }
}
