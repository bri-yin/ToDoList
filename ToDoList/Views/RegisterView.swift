//
//  RegisterView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subtitle: "Get Organizing Todos",
                       angle: -15,
                       background: .orange
            )
            
            
            // Register Form
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Sign Up", background: Color.green) {
                    viewModel.register()
                }
                .padding()
                }
            .offset(y: -50)
            }
        }
    }
    

#Preview {
    RegisterView()
}
