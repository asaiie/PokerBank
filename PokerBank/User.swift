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
    let university: String
}

