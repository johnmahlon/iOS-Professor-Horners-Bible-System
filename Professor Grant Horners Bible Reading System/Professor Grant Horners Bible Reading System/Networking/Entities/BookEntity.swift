//
//  BookEntity.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation

struct BookEntity: Decodable {
    let id: String
    let bibleId: String
    let abbreviation: String
    let name: String
    let nameLong: String
}
