//
//  GameSetupView.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/3/24.
//

import SwiftUI

struct GameSetupView: View {
    @State private var bigblind = ""
    @State private var smallblind = ""
    @State private var ownerbuyin = ""
    @ObservedObject var viewModel = UploadGameViewModel()
    @ObservedObject var secondView =  ActiveGameViewModel()
    var body: some View {
        
        VStack{
            //logo
            VStack(alignment: .leading) {
                HStack{ Spacer() }
                Text("Start Your Game")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 160)
            .padding(.leading)
            .background(Color(springGreen))
            .clipShape(RoundedShape(corners: [.bottomRight]))

            // form fields
            //need to figure out how to make this an float  field in the future or put a try catch if the input can't be parsed to an integer/float
            VStack(spacing: 24){
                CustomFieldNoImage(placeholderText: "Big Blind", text: $bigblind, isSecureField: false)
                CustomFieldNoImage(placeholderText: "Small Blind", text: $smallblind, isSecureField: false)
                CustomFieldNoImage(placeholderText: "Your Buy-In", text: $ownerbuyin, isSecureField: false)
            }
            .padding(.horizontal)
            .padding(.top,12)
            //create game button
            
            Button{
                viewModel.uploadGame(wBig: bigblind, wSmall: smallblind, wCurr: ownerbuyin, wGame: Int.random(in: 10000..<99999))
                //secondView.fetchGames()
            } label: {
                Text("CREATE GAME")
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width-32, height: 48)
            }
            .background(Color(springGreen))
            Spacer()
        }
        .ignoresSafeArea()

    }
}

#Preview {
    GameSetupView()
}
