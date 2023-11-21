//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Halil YAŞ on 21.11.2023.
//

import Foundation

class FeedViewModel : ObservableObject {
    @Published var posts = [Post]()
    
    let videosUrl = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[0]),
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[1]),
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[2]),
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[3]),
        ]
    }
}
