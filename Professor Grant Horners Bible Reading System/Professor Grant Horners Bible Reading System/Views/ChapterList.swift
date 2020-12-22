//
//  CompletableList.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import SwiftUI

struct ChapterList: View {
    private let chapters: [FakeChapter]

    init(_ chapters: [FakeChapter]) {
        self.chapters = chapters
    }

    var body: some View {
        List(chapters) { chapter in
            CompletableListItem(item: chapter.name)
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct CompletableList_Previews: PreviewProvider {
    static var previews: some View {
        ChapterList(FakeChapter.fakeChapters)
    }
}
