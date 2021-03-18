//
//  Movie.swift
//  NetflixClone
//
//  Created by Ronald Fornis Paglinawan on 13/03/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
