//
//  NetworkingService.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation
import Combine

protocol NetworkingService {
    func get<T: Decodable>(request: URLRequest) -> AnyPublisher<T, Error>
}
