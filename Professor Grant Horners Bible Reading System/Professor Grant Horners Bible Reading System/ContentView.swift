//
//  ContentView.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {

            Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all)

            VStack {

                HStack {
                    Text("Reading For Today")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding([.leading, .top], 24)
                    Spacer()
                }

                ChapterList(Chapter.fakeChapters)


                HStack {
                    Spacer()
                    Button("Previous") {
                        print("Previous")
                    }
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 45, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .padding(.bottom, 30)
                        .padding(.top, 30)

                    Spacer()

                    Button("Next") {
                        print("Next")
                    }
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 45, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .padding(.bottom, 30)
                        .padding(.top, 30)

                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Chapter: Identifiable {
    let id = UUID()
    let name: String

    private static let fake = [
        "Matthew 1",
        "Genesis 1",
        "Romans 1",
        "1 Thessalonians 1",
        "Job 1",
        "Psalms 1",
        "Proverbs 1",
        "Joshua 1",
        "Isaiah 1",
        "Acts 1"
    ]


    static let fakeChapters: [Chapter] = fake.map { Chapter(name: $0) }
}
