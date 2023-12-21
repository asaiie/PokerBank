//
//  ProfileView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/20/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser {
            VStack(spacing: 20) {
                Text("Profile Page")
                
                Text("@" + user.username)
                Text(user.email)
                Text(user.university)
                
                Button {
                    viewModel.signOut()
                } label: {
                    HStack{
                        Image(systemName: "arrow.left.circle.fill")
                            .tint(Color(.systemRed))
                        Text("Sign Out")
                            .foregroundColor(Color(.systemGray))
                    }
                }
                
                Button {
                    print("Delete account..")
                } label: {
                    HStack{
                        Image(systemName: "xmark.circle.fill")
                            .tint(Color(.systemRed))
                        Text("Delete Account")
                            .foregroundColor(Color(.systemGray))
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
