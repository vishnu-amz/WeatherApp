//
//  GradientBackgroundView.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 25/02/24.
//

import SwiftUI

struct BackgroundView: View {
    
    // MARK: Properties
    @Binding var backgroundColors: [Color]
    
    // MARK: - Body
    var body: some View {
        LinearGradient(colors: backgroundColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}
