//
//  UploadGameViewModel.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/8/24.
//

import Foundation

class UploadGameViewModel: ObservableObject {
    let service = GameService()
    
    func uploadGame(wBig bigBlind: String, wSmall smallBlind: String, wCurr currMoney: String, wGame gameCode: Int) -> Game?{
        return service.uploadGame(bigBlind: bigBlind, smallBlind: smallBlind, currMoney: currMoney, gameCode: gameCode)
    }
}
