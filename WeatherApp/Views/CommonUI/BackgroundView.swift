//
//  GradientBackgroundView.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 25/02/24.
//

import SwiftUI

struct GradientBackgroundView: View {
    
    var body: some View {
        LinearGradient(colors: backgroundGradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    GradientBackgroundView()
}
