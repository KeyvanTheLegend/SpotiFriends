//
//  Color+extension.swift
//  SpotiFriends
//
//  Created by sh on 7/31/21.
//

import Foundation
import SwiftUI

extension Color {
    static let BackgroundColor = Color("BackgroundColor")
    static let LightGray = Color("LightGray")
    
    static let GradientBackground = RadialGradient(
        gradient: Gradient(
            colors: [
                Color.BackgroundColor.opacity(0.93),
                Color.BackgroundColor]
        ),
        center: .center,
        startRadius: 1,
        endRadius: 500)

}
