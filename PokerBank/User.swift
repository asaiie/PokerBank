//
//  User.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/20/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let username: String
    let email: String
    let univeristy: String
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, username: "legoat123", email: "lebron_james@gmail.com", univeristy: "Brown University")
}
