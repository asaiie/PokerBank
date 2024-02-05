//
//  PokerBankApp.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/19/23.
//

import SwiftUI
import Firebase

@main
struct PokerBankApp: App {
    @StateObject var viewModel = AuthViewModel()
    @StateObject var gameViewModel = ActiveGameViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
                .environmentObject(gameViewModel)
        }
    }
}
