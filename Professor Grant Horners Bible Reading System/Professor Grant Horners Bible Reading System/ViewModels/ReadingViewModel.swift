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

    private var lists: [[BookEntity]]?

    init(networker: NetworkingService = BibleAPIService()) {
        self.networker = networker
        doSomething()
    }

    func createLists() {
        var urlRequest = URLRequest(
            url: URL(
                string:"https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-02/books"
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
                if let bookData = data.data {
                    
                } else {
                    print(data.message!)
                }
            }
    }

}
