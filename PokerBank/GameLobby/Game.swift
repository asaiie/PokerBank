//
//  Game.swift
//  PokerBank
//
//  Created by Zubin Oommen on 2/1/24.
//

import FirebaseFirestoreSwift

struct Game: Decodable, Equatable, Hashable {
    //@DocumentID var id: String?
    let GameHost: String
    let TotalMoney: String
    let bigBlind: String
    let gameCode: Int
    let smallBlind: String
}
