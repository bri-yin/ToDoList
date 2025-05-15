//
//  LoginView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            //Header
            HeaderView()
            // Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    // Attempt log in
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
            }
            // Create Account
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
