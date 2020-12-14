//
//  news.swift
//  newsAPI
//
//  Created by Yevhenii Ganusich on 11/29/20.
//

import SwiftUI

struct Article: Decodable {
    let title: String
    let description: String
}

struct ArticleList: Decodable {
    let articles: [Article]
}


func getResults() {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=909aece8ffda42d395cb548b92fbc487") else {return}
        URLSession.shared.dataTask(with: url) { (data, _, _ ) in
            let decoder = JSONDecoder()
            let article = try! decoder.decode(Article.self, from: data!)
            print(article)
        }.resume()
}


struct news_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
