//
//  ContentView.swift
//  SwiftUIListExamples
//
//  Created by Hafiz on 04/08/2021.

import SwiftUI

struct BasicDynamicView: View {
    var bookTitles = [
        "Book 1",
        "Book 2",
        "Book 4"
    ]
    
    var body: some View {
        List {
            ForEach (bookTitles, id: \.self) { title in
                CustomRowView(title: title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicDynamicView()
    }
}
