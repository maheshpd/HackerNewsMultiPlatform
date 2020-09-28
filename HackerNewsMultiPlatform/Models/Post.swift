//
//  Post.swift
//  HackerNewsMultiPlatform
//
//  Created by Mahesh Prasad on 28/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let title: String
    let url:String?
    
}
