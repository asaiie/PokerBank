//
//  GameCreateView.swift
//  PokerBank
//
//  Created by Zubin Oommen on 12/21/23.
//

import SwiftUI

struct GameCreateView: View {
    /*
    Game struc should contain:
     dictionary of user to associated buy in
     gamecode
     game host
     big blind
     small blind
     total money in game
     in the future maybe an online game link so that randoms can join the game too?
     */

    @State private var playerList = [""]
    @State private var gameHost = ""
    @State private var university = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        Text("Hello, World")
    }
}

#Preview {
    GameCreateView()
}
