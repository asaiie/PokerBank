//
//  HomeView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/20/23.
//

import SwiftUI

enum HomeGameOptions {
    case createGame
    case joinGame
}

struct HomeView: View {
    @State private var smallBlind = ""
    @State private var bigBlind = ""
    @State private var gameCode = ""
    @State private var selectedOption: HomeGameOptions = .createGame
    
    var body: some View {
        NavigationStack{
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
                
                VStack(alignment: .leading) {
                    if selectedOption == .createGame {
                        Text("Create Game")
                            .font(.title2)
                            .fontWeight(.semibold)
                        HStack{
                            HStack {
                                Image(systemName: "dollarsign")
                                    .imageScale(.small)
                                TextField("Small Blind", text: $smallBlind)
                                    .font(.subheadline)
                            }
                            .frame(height: 44)
                            .padding(.horizontal)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(Color(.systemGray4))
                            }
                            HStack {
                                Image(systemName: "dollarsign")
                                    .imageScale(.small)
                                TextField("Big Blind", text: $bigBlind)
                                    .font(.subheadline)
                            }
                            .frame(height: 44)
                            .padding(.horizontal)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(Color(.systemGray4))
                            }
                        }
                    } else {
                        CollapsedPickerView(title: "Create Game", description: "Enter blinds")
                    }
                    
                }
                .padding()
                .frame(height: selectedOption == .createGame ? 120 : 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
                .onTapGesture {
                    withAnimation(.snappy) { selectedOption = .createGame }
                }
                
                VStack {
                    if selectedOption == .joinGame {
                        HStack{
                            Text("Join Game")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "lock")
                                .imageScale(.small)
                            TextField("Game Code", text: $gameCode)
                                .font(.subheadline)
                        }
                        .frame(height: 44)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(Color(.systemGray4))
                        }
                    } else {
                        CollapsedPickerView(title: "Join Game", description: "Enter code")
                    }
                }
                .padding()
                .frame(height: selectedOption == .joinGame ? 120 : 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
                .onTapGesture {
                    withAnimation(.snappy) { selectedOption = .joinGame }
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    NavigationLink {
                        ProfileView()
                            .navigationBarBackButtonHidden(false)
                    } label: {
                        Image(systemName: "person")
                            .foregroundColor(.black)
                            .background(Color(.systemGreen))
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding()
                        
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    HomeView()
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
