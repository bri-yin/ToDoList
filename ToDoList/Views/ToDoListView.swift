//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    var body: some View {
        NavigationView {
            VStack {
                List(items) {
                    item in ToDoListItemView(item: item)
                        .swipeActions{ Button {
                            
                        } label: {
                            Text("Delete")
                                .foregroundColor(Color.red)
                        }
                        }
                        .listStyle(PlainListStyle())
                }
            }
            .navigationTitle("To Do List!")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "9yHwatio4jOtXzxGFjmcUE9bWIq1")
}
