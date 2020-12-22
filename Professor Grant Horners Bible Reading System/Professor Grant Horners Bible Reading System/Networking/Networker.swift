//
//  Networker.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation
import Combine

class Networker {
    static public func get<T: Decodable>(request: URLRequest) -> AnyPublisher<T, Never> {
        URLSession.shared
            .dataTaskPublisher(for: request)
            .map(\.data)
            .decode(
                type: T.self,
                decoder: JSONDecoder()
            )
            .assertNoFailure()
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
