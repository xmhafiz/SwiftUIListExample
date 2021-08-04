//
//  MenuView.swift
//  SwiftUIListExamples
//
//  Created by Hafiz on 04/08/2021.
//

import SwiftUI

struct SectionListView: View {
    let foods = [
        "Burger",
        "Fried Chicken",
        "Salads"
    ]
    
    let drinks = [
        "Orange Juice",
        "Tea",
        "Coffee Latte",
        "Mineral water"
    ]
    var body: some View {
        List {
            Section(header: Text("Foods")) {
                ForEach(foods, id: \.self) { item in
                    Text(item)
                }
            }
            Section(header: Text("Beverages")) {
                ForEach(drinks, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        SectionListView()
    }
}
