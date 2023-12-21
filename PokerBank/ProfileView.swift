//
//  ProfileView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/20/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Profile Page")
            
            Text("@" + User.MOCK_USER.username)
            Text(User.MOCK_USER.email)
            Text(User.MOCK_USER.university)
            
            Button {
                print("Sign out..")
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

#Preview {
    ProfileView()
}
