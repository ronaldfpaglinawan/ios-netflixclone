//
//  ComingSoonVM.swift
//  NetflixClone
//
//  Created by Ronald Fornis Paglinawan on 6/05/21.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
