//
//  PostGridView.swift
//  TikTokClone
//
//  Created by Halil YAŞ on 21.11.2023.
//

import SwiftUI

struct PostGridView: View {
    
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        LazyVGrid(columns: items,spacing: 2) {
            ForEach(0 ..< 15) { post in
                Rectangle()
                    .frame(width: width,height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
