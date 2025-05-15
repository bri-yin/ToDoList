//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Brian Yin on 5/13/25.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
