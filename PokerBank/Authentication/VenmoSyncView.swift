//
//  VenmoSyncView.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 2/5/24.
//

import SwiftUI

struct VenmoSyncView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack{ Spacer() }
                Text("Setup account.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Sync with Venmo")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(springGreen))
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            Spacer()
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    VenmoSyncView()
}
