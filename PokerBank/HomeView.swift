//
//  HomeView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/20/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            Text("Home Page")
            
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
}

#Preview {
    HomeView()
}
