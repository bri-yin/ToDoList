//
//  NewItemView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
        }
        
        Form {
            // Title
            TextField("Title", text: $viewModel.title)
                .textFieldStyle(DefaultTextFieldStyle())
            
            // Due Date
            DatePicker("Due Date", selection: $viewModel.dueDate)
                .datePickerStyle(GraphicalDatePickerStyle())
            
            // Button
            TLButton(title: "Save", background: .pink) {
                if viewModel.notPast && viewModel.notEmpty {
                    viewModel.save()
                    newItemPresented = false
                } else {
                    if !viewModel.notEmpty {
                        viewModel.showTextAlert = true
                    } else if !viewModel.notPast {
                        viewModel.showDateAlert = true
                    }
                }
            }
            .padding()
        }
        .alert(isPresented: Binding<Bool>(
            get: {viewModel.showDateAlert || viewModel.showTextAlert},
            set: { _ in
                viewModel.showDateAlert = false
                viewModel.showTextAlert = false}
        )) {if viewModel.showTextAlert {
            return Alert(title: Text("Error"),
                         message: Text("Please fill in all fields"))
        } else {
            return Alert(title: Text("Error"),
                         message: Text("Please select a date that has not passed"))
        }}
    }
}
    
    #Preview
    {
        NewItemView(newItemPresented: Binding(get:
                                                { return true
        }, set: {_ in}))
    }
