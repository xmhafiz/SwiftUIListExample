//
//  ListChildren.swift
//  SwiftUIListExamples
//
//  Created by Hafiz on 04/08/2021.
//

import SwiftUI

struct ListWithChildrenView: View {
    let authors = MockData.getAuthors()
    var body: some View {
        List(authors, children: \.subItems) { rowItem in
            ItemView(item: rowItem)
        }
    }
}

struct ItemView: View {
    var item: RowItem
    var isParent: Bool {
        return item.subItems != nil
    }
    var body: some View {
        HStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(isParent ? .blue : .green)
            Text(item.title)
        }
    }
}

struct ListChildren_Previews: PreviewProvider {
    static var previews: some View {
        ListWithChildrenView()
    }
}
