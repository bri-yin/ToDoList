//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import SwiftUI

struct ToDoListItemView: View {
    let item: ToDoListItem
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))").font(
                    .footnote).foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "Get Eggs", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false))
}
