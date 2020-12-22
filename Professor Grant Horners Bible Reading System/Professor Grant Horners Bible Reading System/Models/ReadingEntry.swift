//
//  ReadingEntry.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation

struct ReadingEntry: Identifiable {
    let id = UUID()
    let book: BookEntity
    let chapter: ChapterEntity

    var title: String {
        "\(book.name) \(chapter.number)"
    }
}
