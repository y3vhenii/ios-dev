//
//  ContentView.swift
//  newsAPI
//
//  Created by Yevhenii Ganusich on 11/29/20.
//

import SwiftUI

struct ContentView: View {
    @State private var trending = [Article]()
    var body: some View {
        List(trending, id: \.title){ item in
            HStack {
                Text(item.author!).foregroundColor(.black).font(.headline)
                Text(item.title!).foregroundColor(.blue).font(.footnote)
            }
        }
        .onAppear(perform: receiveApiData)
        
    }
}

extension ContentView {
    func receiveApiData() {
        let newsRequest = NewsRequest()
        newsRequest.getNewsFeed { result in
            switch result {
                case.failure(let error):
                    print(error)
            case.success(let news):
                self.trending = news
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
