//
//  PreviewVM.swift
//  NetflixClone
//
//  Created by Ronald Fornis Paglinawan on 18/05/21.
//

import Foundation

class PreviewVM: ObservableObject {
    
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
