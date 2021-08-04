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
        "Book 3"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach (bookTitles, id: \.self) { title in
                    NavigationLink(destination: DetailView(title: title)) {
                        CustomRowView(title: title)
                    }
                }
            }
            .navigationTitle("Books")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicDynamicView()
    }
}
