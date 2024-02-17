//
//  ContentView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @ObservedObject var gameViewModel: ActiveGameViewModel

    var body: some View {
        Group {
            if viewModel.userSession != nil {
//                if gameViewModel.currentGame == nil {
//                    HomeView()
//                }
//                else{
//                    BetaInGameView(game: gameViewModel.currentGame!)
//                }
                HomeView()
            } 
            else {
                LoginView()
            }
        }//.onChange(of: gameViewModel.currentGame) {
        //   print("hi")
         //   }

    }
}

#Preview {
    ContentView(gameViewModel: ActiveGameViewModel())
}
