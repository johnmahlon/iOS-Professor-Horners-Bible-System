//
//  CompletableListItem.swift
//  Professor Grant Horners Bible Reading System
//
//  Created by John Peden on 12/22/20.
//

import SwiftUI

struct CompletableListItem: View {
    let item: String
    @State var complete: Bool = false

    var body: some View {
        HStack {
            Text(item)
                .font(.title2)
                .padding(8)

            Spacer()

            Image(systemName: "checkmark.circle")
                .font(.title2)
                .foregroundColor(complete ? .green : .black)
        }.onTapGesture {
            complete = !complete
        }
    }
}


struct CompletableListItem_Previews: PreviewProvider {
    static var previews: some View {
        CompletableListItem(item: "test")
    }
}
