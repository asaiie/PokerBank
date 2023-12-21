//
//  CustomFieldNoImage.swift
//  PokerBank
//
//  Created by Zubin Oommen on 1/4/24.
//

import SwiftUI
struct CustomFieldNoImage: View {
    let placeholderText: String
    @Binding var text: String
    var isSecureField = false
    var body: some View {
        VStack {
                if isSecureField {
                    SecureField(placeholderText, text: $text)
                        .font(.system(size: 14))
                } else {
                    TextField(placeholderText, text: $text)
                        .font(.system(size: 14))
                }

            Divider()
                .background(Color(.darkGray))
        }
    }
}

#Preview {
    CustomFieldNoImage(
                     placeholderText: "Email",
                     text: .constant(""))
}
