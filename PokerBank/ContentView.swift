//
//  ContentView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @EnvironmentObject var gameViewModel: ActiveGameViewModel

    var body: some View {
        Group {
            if viewModel.userSession != nil {
                if gameViewModel.currentGame != nil {
                    BetaInGameView(game: gameViewModel.currentGame!)
                }
                else{
                    HomeView()
                }
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
