//
//  article.swift
//  newsAPI
//  Objects used to assemble API request
//  Created by Yevhenii Ganusich on 12/6/20.
//

import Foundation

struct Article: Codable {
    // I'm ignoring source here...
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: Date?
    var content: String?
}

struct NewsFeed: Codable {
    var status: String = ""
    var totalResults: Int = 0
    var articles: [Article]?
}

