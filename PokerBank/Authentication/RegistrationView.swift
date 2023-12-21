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
    @State private var university = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
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
                    CustomInputField(imageName: "at",
                                     placeholderText: "Username",
                                     text: $username)
                    CustomInputField(imageName: "book",
                                     placeholderText: "University",
                                     text: $university)
                    CustomInputField(imageName: "lock",
                                     placeholderText: "Password",
                                     text: $password,
                                     isSecureField: true)
                    ZStack(alignment: .trailing) {
                        CustomInputField(imageName: "lock",
                                         placeholderText: "Confirm Password",
                                         text: $confirmPassword,
                                         isSecureField: true)
                        
                        if !password.isEmpty && !confirmPassword.isEmpty {
                            if password == confirmPassword {
                                Image(systemName: "checkmark.circle.fill")
                                    .imageScale(.medium)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(.systemGreen))
                            } else {
                                Image(systemName: "xmark.circle.fill")
                                    .imageScale(.medium)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(.systemRed))
                            }
                        }
                    }
                }
                .padding(32)
                
                Button {
                    Task {
                        try await viewModel.createUser(withEmail: email,
                                                       password: password,
                                                       username: username,
                                                       university: university)
                    }
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
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.5)
                
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

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
        && !username.isEmpty
        && !university.isEmpty
    }
}

#Preview {
    RegistrationView()
}
