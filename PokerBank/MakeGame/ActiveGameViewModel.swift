//
//  ActiveGameViewModel.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/9/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class ActiveGameViewModel: ObservableObject {
    let service = GameService()
    @Published var currentGame: Game? = nil
    
    init(){}
    func fetchGames(finalGameCode: String){
        getAllGames(gameCode: finalGameCode)
    }
    
    func getAllGames(gameCode: String) {
        var game: Game? = nil
            Firestore.firestore().collection("activeGames")
                .whereField("gameCode", isEqualTo: Int(gameCode))
                .getDocuments{snapshot, _ in
                    guard let documents = snapshot?.documents else {return}
                    guard let gameDocument = try? documents[0].data(as: Game.self) else {print("HELLO"); return}
                    game = gameDocument
                    print("Hello")
                    self.currentGame = game
                    //need to put a try catch here.
                }

        }

}
