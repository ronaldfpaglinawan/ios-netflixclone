//
//  Trailer.swift
//  NetflixClone
//
//  Created by Ronald Fornis Paglinawan on 30/03/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
