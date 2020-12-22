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

    init(networker: NetworkingService = BibleAPIService()) {
        self.networker = networker
        doSomething()
    }

    func doSomething() {
        var urlRequest = URLRequest(
            url: URL(
                string:"https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-02/books"
            )!
        )

        urlRequest.addValue("7d6bb10a91865e21c74f4c78d574a352", forHTTPHeaderField: "api-key")

        cancellable = networker
            .get(request: urlRequest)
            .sink { completion in
                switch completion {
                case .finished: print("finished")
                case .failure(let err): print(err)
                }
            } receiveValue: { (data: RequestEntity<BookEntity>) in
                if let bookData = data.data {
                    print(bookData.count)
                } else {
                    print(data.message!)
                }
            }
    }

}
