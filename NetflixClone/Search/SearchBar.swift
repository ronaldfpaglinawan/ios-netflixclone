//
//  SearchBar.swift
//  NetflixClone
//
//  Created by Ronald Fornis Paglinawan on 20/04/21.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var text: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 320, height: 36) // width: 270
                .cornerRadius(8)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(-7)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    
                
                Button(action: {
                    // Clear text
                    
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.graySearchText)
                        .frame(width: 35, height: 35)
                })
                .padding(.trailing, 18)
                
                
                Button(action: {
                    // Clear text, hide both buttons, give up first-responder
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
                .padding(.trailing, 10)
                
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SearchBar()
                .padding()
        }
    }
}
