//
//  ContentView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/13/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
        .padding()
    }
}

#Preview {
    MainView()
}
