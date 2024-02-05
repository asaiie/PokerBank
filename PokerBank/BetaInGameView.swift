//
//  BetaInGameView.swift
//  PokerBank
//
//  Created by Zubin Oommen on 2/4/24.
//

import SwiftUI

struct BetaInGameView: View {
    
    private let game: Game
    
    init(game: Game){
        self.game=game
    }
    
    var body: some View {
        Text(String(game.gameCode))
    }
}

#Preview {
    BetaInGameView(game: Game(id: "alksdjfklds", GameHost: "Zubin", TotalMoney: "20", bigBlind: ".1", gameCode: 57890, smallBlind: ".2"))
}
