//
//  User.swift
//  ToDoList
//
//  Created by Brian Yin on 5/14/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
