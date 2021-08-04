//
//  DetailView.swift
//  SwiftUIListExamples
//
//  Created by Hafiz on 04/08/2021.
//

import SwiftUI

struct DetailView: View {
    let title: String
    var body: some View {
        Text(title)
            .bold()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Lorem Ipsum")
    }
}
