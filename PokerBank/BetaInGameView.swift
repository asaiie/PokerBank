//
//  BetaInGameView.swift
//  PokerBank
//
//  Created by Zubin Oommen on 2/4/24.
//

import SwiftUI

struct BetaInGameView: View {
    
    private let game: Game
    var gameCode : String
    
    /*init(game: Game){
        self.game=game
    }*/
    var body: some View {
        Text(gameCode)
    }
}

#Preview {
    BetaInGameView()
}
