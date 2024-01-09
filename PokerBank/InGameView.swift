//
//  InGameView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/22/23.
//

import SwiftUI

struct InGameView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            Text("@" + user.username + "'s game")
        }
    }
}

#Preview {
    InGameView()
}
