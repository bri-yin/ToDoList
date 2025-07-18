//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showDateAlert = false
    @Published var showTextAlert = false
    init() {}
    
    func save() {
        
    }
    
    var notEmpty: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        return true
    }
    
    var notPast: Bool {
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
