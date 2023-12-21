//
//  GameService.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/8/24.
//

import Foundation

import Firebase

struct GameService {
    func uploadGame(bigBlind: String, smallBlind: String, currMoney: String, gameCode: Int) {
        //guard let uid = Auth.auth().currentUser?.uid else {return}
        let data = [//"GameHost": uid,
                    "bigBlind": bigBlind,
                    "smallBlind": smallBlind,
                    "TotalMoney": currMoney, 
                    "gameCode": gameCode] as [String : Any]
        
        Firestore.firestore().collection("activeGames").document()
            .setData(data){ _ in
                print("Did upload game...")
            }
    }
    
    func getAllGames(){
        Firestore.firestore().collection("activeGames").getDocuments{snapshot, _ in
            guard let documents = snapshot?.documents else {return}
            
            documents.forEach { doc in
                print(doc.data()["bigBlind"])
            }
            
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
