//
//  LoginView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/19/23.
//

import SwiftUI

let springGreen = Color(red: 0.5882, green: 0.902, blue: 0.7451)

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    HStack{ Spacer() }
                    Text("Hello.")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Welcome Back")
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
                    CustomInputField(imageName: "lock",
                                     placeholderText: "Password",
                                     text: $password,
                                     isSecureField: true)
                }
                .padding(.horizontal, 32)
                .padding(.top, 44)
                
                HStack {
                    Spacer()
                    NavigationLink {
                        Text("Reset password view..")
                            .navigationBarBackButtonHidden(false)
                    } label: {
                        Text("Forgot Password?")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemGreen))
                            .padding(.top)
                            .padding(.trailing, 24)
                    }
                }
                
                Button {
                    Task {
                        try await viewModel.signIn(withEmail: email, 
                                                   password: password)
                    }
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 340, height: 50)
                        .background(springGreen)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
                
                Spacer()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Text("Dont have an account?")
                            .font(.system(size: 14))
                        Text("Sign Up")
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
    LoginView()
}
