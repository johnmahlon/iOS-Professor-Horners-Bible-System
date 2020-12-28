//
//  ReadingViewModel.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation
import Combine

class ReadingViewModel {

    private var cancellable: AnyCancellable?
    private let networker: NetworkingService

    private var lists: [[String: [ChapterEntity]]] = [
        
    ]

    init(networker: NetworkingService = BibleAPIService()) {
        self.networker = networker
        createLists()
    }

    func createLists() {
        var urlRequest = URLRequest(
            url: URL(
                string:"https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-02/books?include-chapters=true"
            )!
        )

        urlRequest.addValue(Secrets.apiKey, forHTTPHeaderField: "api-key")

        cancellable = networker
            .get(request: urlRequest)
            .sink { completion in
                switch completion {
                case .finished: print("finished")
                case .failure(let err): print(err)
                }
            } receiveValue: { (data: RequestEntity<BookEntity>) in
                 guard
                    let bookData = data.data,
                    data.error == nil
                 else {
                    return
                }

                let books = bookData.filter { book in
                    var contains = false

                    for listBook in ReadingPlan.list {
                        contains = listBook.contains(book.name)

                        if contains { break }
                    }

                    return contains
                }

                print(books.count)
                books.forEach { print($0.name) }
            }
    }

}
