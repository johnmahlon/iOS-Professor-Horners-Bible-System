//
//  ChapterEntity.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation

struct ChapterEntity: Decodable {
    let id: String
    let bibleId: String
    let bookId: String
    let number: String
    let reference: String
}
