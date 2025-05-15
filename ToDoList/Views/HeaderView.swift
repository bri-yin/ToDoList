//
//  HeaderView.swift
//  ToDoList
//
//  Created by Brian Yin on 5/15/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        // Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color.pink)
                .rotationEffect(Angle(degrees: 15))
                
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text("Get Things Done")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .bold()
            }
            .padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
