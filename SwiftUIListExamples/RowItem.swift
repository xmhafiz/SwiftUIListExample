//
//  RowItem.swift
//  SwiftUIListExamples
//
//  Created by Hafiz on 04/08/2021.
//

import Foundation

struct RowItem: Identifiable {
    let id = UUID()
    let title: String
    var subItems: [RowItem]? = nil
}

struct MockData {
    static func getAuthors() -> [RowItem] {
        let author1 = RowItem(title: "John Doe", subItems: [
            RowItem(title: "Swift Cook Book"),
            RowItem(title: "iOS Development for Beginner"),
            RowItem(title: "Swift 5 What's new")
        ])
        
        let author2 = RowItem(title: "Alice Wonderland", subItems: [
            RowItem(title: "C++"),
            RowItem(title: "C Fundamentals"),
        ])
        
        let author3 = RowItem(title: "Wayne Roonrey", subItems: [
            RowItem(title: "Testing Methods"),
            RowItem(title: "Software Engineering"),
            RowItem(title: "Javascript Fundamentals"),
        ])
        
        return [author1, author2, author3]
    }
}
