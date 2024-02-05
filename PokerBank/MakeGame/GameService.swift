//
//  GameService.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/8/24.
//

import Foundation

import Firebase
import FirebaseFirestoreSwift

struct GameService {
    func uploadGame(bigBlind: String, smallBlind: String, currMoney: String, gameCode: Int) {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let data = ["GameHost": uid,
                    "bigBlind": bigBlind,
                    "smallBlind": smallBlind,
                    "TotalMoney": currMoney, 
                    "gameCode": gameCode] as [String : Any]
        
        Firestore.firestore().collection("activeGames").document()
            .setData(data){ _ in
                print("Did upload game...")
            }
    }
    
    func getAllGames(gameCode: String, completion: @escaping(Game) -> Void){
        Firestore.firestore().collection("activeGames")
            .whereField("gameCode", isEqualTo: Int(gameCode))
            .getDocuments{snapshot, _ in
                guard let documents = snapshot?.documents else {return}
            guard let game = try? documents[0].data(as: Game.self) else {return}
            completion(game)
                /*documents.forEach { doc in
                    print(doc.data()["gameCode"])
                }*/
                //need to put a try catch here.
            }
        }
        
    }


/*
Game struc should contain:
 dictionary of user to associated buy in
 gamecode
 game host x
 big blind x
 small blind x
 total money in game x
 in the future maybe an online game link so that randoms can join the game too?
 */
