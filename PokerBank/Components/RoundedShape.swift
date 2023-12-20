//
//  RoundedShape.swift
//  PokerBank
//
//  Created by Amit Erraguntla on 12/19/23.
//

import Foundation

import SwiftUI

struct RoundedShape: Shape {
    var corners: UIRectCorner
    // var roundnessWidth = 80
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        return Path(path.cgPath)
    }
}
