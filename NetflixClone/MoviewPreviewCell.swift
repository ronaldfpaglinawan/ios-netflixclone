//
//  MoviewPreviewCell.swift
//  NetflixClone
//
//  Created by Ronald Fornis Paglinawan on 14/05/21.
//

import SwiftUI
import Kingfisher

struct MoviewPreviewCell: View {
    var movie:Movie
    
    let colors: [Color] = [.yellow, .gray, .pink, .red, .blue, .green, .orange]
    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 3.0)
                        .foregroundColor(colors.randomElement())
            )
            
            Image(movie.previewImageName)
                .resizable()
                .scaledToFit()
                .offset(y: -20)
                .frame(height: 65)
        }
        
    }
}

struct MoviewPreviewCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            MoviewPreviewCell(movie: exampleMovie1)
                .frame(width: 165, height: 50)
        }
    }
}
