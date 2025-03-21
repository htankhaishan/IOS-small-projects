//
//  PostData.swift
//  H4X0R News
//
//  Created by khai on 21/03/2025.
//

import Foundation

// Identifiable allow our list to be able to recongize the order of our "Post" objects based on "id".

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
