//
//  ListRowView.swift
//  Todo App IOS
//
//  Created by Avi manak on 11/12/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor( item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    Group {
        ListRowView(item: ItemModel(title: "This is the item", isCompleted: true))
        ListRowView(item: ItemModel(title: "This is the item", isCompleted: false))
    }.previewLayout(.sizeThatFits)
}
