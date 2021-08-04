//
//  SwipeDeleteListView.swift
//  SwiftUIListExamples
//
//  Created by Hafiz on 04/08/2021.
//

import SwiftUI

struct SwipeDeleteListView: View {
    @State var bookTitles = [
        "Book 1",
        "Book 2",
        "Book 3",
        "Book 4",
        "Book 5",
        "Book 6"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach (bookTitles, id: \.self) { title in
                    CustomRowView(title: title)
                }
                .onDelete(perform: { indexSet in
                    deleteAction(indexSet)
                })
            }
            .navigationTitle("My Books")
            .navigationBarItems(trailing: EditButton())
        }
        
    }
    
    func deleteAction(_ index: IndexSet) {
        bookTitles.remove(atOffsets: index)
    }
}

struct SwipeDeleteListView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeDeleteListView()
    }
}
