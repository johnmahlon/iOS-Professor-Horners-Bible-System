//
//  RequestEntity.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation

struct RequestEntity<T: Decodable>: Decodable {
    let data: [T]?
    let statusCode: Int?
    let error: String?
    let message: String?
}
