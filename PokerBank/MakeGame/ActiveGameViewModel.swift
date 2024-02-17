//
//  ActiveGameViewModel.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/9/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


@MainActor class ActiveGameViewModel: ObservableObject {
    let service = GameService()
    @Published var currentGame: Game? /*{
        didSet {
            print("currentGame was set to \(String(describing: currentGame))")
        }
    }*/

    
    init(){
        self.currentGame = nil
    }
    /*
    func fetchGames(finalGameCode: String) async throws {
        getAllGames(gameCode: finalGameCode)
    }
    */
    
    func getAllGames(gameCode: String) async throws -> Game? {
            //print(self.currentGame)
            let x = try await Firestore.firestore().collection("activeGames")
            .whereField("gameCode", isEqualTo: Int(gameCode)!)
                .getDocuments() /*{snapshot, _ in
                                 guard let documents = snapshot?.documents else {return}
                                 guard let gameDocument = try? documents[0].data(as: Game.self) else {print("HELLO"); return}
                                 game = gameDocument
                                 self.currentGame = game
                                 print(self.currentGame)
                                 //need to put a try catch here.
                                 }*/
        self.currentGame = try x.documents[0].data(as: Game.self)
        try print(x.documents[0].data(as: Game.self))
        return try x.documents[0].data(as: Game.self)

    }

}
