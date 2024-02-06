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
    @Published var currentGame: Game?
    
    init(){
        
    }
    /*
    func fetchGames(finalGameCode: String) async throws {
        getAllGames(gameCode: finalGameCode)
    }
    */
    
    func getAllGames(gameCode: String) async throws {
        do{
            print(self.currentGame)
            let x = try await Firestore.firestore().collection("activeGames")
                .whereField("gameCode", isEqualTo: Int(gameCode))
                .getDocuments() /*{snapshot, _ in
                                 guard let documents = snapshot?.documents else {return}
                                 guard let gameDocument = try? documents[0].data(as: Game.self) else {print("HELLO"); return}
                                 game = gameDocument
                                 self.currentGame = game
                                 print(self.currentGame)
                                 //need to put a try catch here.
                                 }*/
            self.currentGame = try x.documents[0].data(as: Game.self)
            print(self.currentGame)
        }
        catch{
            print("this is an error that we shall update later")
        }
    }

}
