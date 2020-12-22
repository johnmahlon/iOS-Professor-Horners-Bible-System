//
//  ReadingEntry.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import Foundation

struct ReadingEntry: Identifiable {
    let id = UUID()
    let book: String
    let number: String

    var title: String {
        "\(book) \(number)"
    }
}
