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
        Text(String(game.bigBlind))
    }
}

#Preview {
    BetaInGameView(game: Game(id: "alksdjfklds", GameHost: "john doe", TotalMoney: "20", bigBlind: ".1", gameCode: 57890, smallBlind: ".2"))
}
