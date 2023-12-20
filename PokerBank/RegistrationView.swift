//
//  RegistrationView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/19/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var university = ""
    @State private var password = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    HStack{ Spacer() }
                    Text("Get started.")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Create your account")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
                .frame(height: 260)
                .padding(.leading)
                .background(Color(springGreen))
                .clipShape(RoundedShape(corners: [.bottomRight]))
                
                VStack(spacing: 40) {
                    CustomInputField(imageName: "envelope",
                                     placeholderText: "Email",
                                     text: $email)
                    CustomInputField(imageName: "person",
                                     placeholderText: "Username",
                                     text: $username)
                    CustomInputField(imageName: "person",
                                     placeholderText: "Full name",
                                     text: $fullname)
                    CustomInputField(imageName: "book",
                                     placeholderText: "University",
                                     text: $university)
                    CustomInputField(imageName: "lock",
                                     placeholderText: "Password",
                                     text: $password,
                                     isSecureField: true)
                }
                .padding(32)
                
                Button {
                    print("Sign up here..")
                } label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 340, height: 50)
                        .background(springGreen)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        Text("Sign In")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                    }
                }
                .padding(.bottom, 32)
                .foregroundColor(Color(.systemGreen))
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    RegistrationView()
}
