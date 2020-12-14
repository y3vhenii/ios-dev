//
//  topHeadlines.swift
//  newsAPI
//  API processes happen here
//  Created by Yevhenii Ganusich on 12/6/20.
//

import Foundation

enum RequestErrors: Error {
    case noDataReturned
    case cantParseJson
}

// Assemble news request here
struct NewsRequest {
    let resourceURL: URL
    let API_KEY = "909aece8ffda42d395cb548b92fbc487"
    
    init() {
        let resourceString = "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(API_KEY)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        self.resourceURL = resourceURL
    }
    
    func getNewsFeed(completion: @escaping(Result<[Article], RequestErrors>) -> Void){

        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, response, error in
            guard data != nil else {
                completion(.failure(.noDataReturned))
                return
            }
            do {
                let decoder = JSONDecoder()
                let apiResponse = try decoder.decode(NewsFeed.self, from: data!)
                let newsDetails = apiResponse.articles
                completion(.success(newsDetails!))
            } catch {
                completion(.failure(.cantParseJson))
            }
        }
        dataTask.resume()
    }
}
