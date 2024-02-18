//
//  InGameView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/22/23.
//

import SwiftUI

struct InGameView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    private let game: Game
    
    init(game: Game){
        self.game=game
    }
    
    var body: some View {
        VStack{
            VStack {
                Spacer()
                Text("PokerBank Home")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(32)
            }
            .frame(width: UIScreen.main.bounds.size.width, height: 144)
            .padding(.leading)
            .background(Color(springGreen))
            
            HStack{
                Text("Zubin" + "'s Game")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("8")
                    .foregroundColor(.red)
                Image(systemName: "person.fill")
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top)
            
            Divider()
                .background(Color.gray)
                .padding(.leading)
                .padding(.trailing)
            
            Text("Code: " + String(game.gameCode))
            
            HStack{
                VStack{
                    Text("Players   Buy In")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.top)
                    ScrollView{
                        VStack{
                            ForEach(0 ... 100, id: \.self) { index in
                                Text("Hello       \(index)")
                                Divider()
                            }
                        }
                    }
                    .frame(height: 150)
                }
                VStack(spacing: 5){
                    Text("Table")
                    Divider()
                        .frame(width: 75)
                        .background(.black)
                        .padding(.bottom)
                    Text("$" + "220")
                        .font(.title2)
                }
                
            }
            .padding(.leading)
            .padding(.trailing)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    InGameView(game: Game( GameHost: "john doe", TotalMoney: "20", bigBlind: ".1", gameCode: 57890, smallBlind: ".2"))
}
