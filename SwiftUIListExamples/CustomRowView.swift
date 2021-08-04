//
//  CustomRowView.swift
//  SwiftUIListExamples
//
//  Created by Hafiz on 04/08/2021.
//

import SwiftUI

struct CustomRowView: View {
    var title: String
    var body: some View {
        HStack {
            Circle()
                .frame(width: 40, height: 40)
                .foregroundColor(.green)
            Text(title)
        }
    }
}

struct CustomRowView_Previews: PreviewProvider {
    static var previews: some View {
        CustomRowView(title: "Lorem Ipsum")
    }
}
