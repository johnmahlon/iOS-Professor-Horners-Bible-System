//
//  RequestEntity.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation

struct RequestEntity<T: Decodable> {
    let data: [T]
}
