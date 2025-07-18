//
//  LoginView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
            VStack {
                //Header
                HeaderView(title: "To Do List",
                           subtitle: "Get Things Done",
                           angle: 15,
                           background: .pink)
                
                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Login", background: .blue,) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                Spacer()
                // Create Account
                VStack {
                    Text("New Around Here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    .padding(.bottom, 100)
                    // Show registration
                }
            }
        
    }
}

#Preview {
    LoginView()
}
