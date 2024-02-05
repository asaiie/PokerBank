//
//  ActiveGameViewModel.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/9/24.
//

import Foundation

class ActiveGameViewModel: ObservableObject {
    let service = GameService()
    init(){}
    func fetchGames(finalGameCode: String) async throws -> Game?{
        try await service.getAllGames(gameCode: finalGameCode)
    }
}
