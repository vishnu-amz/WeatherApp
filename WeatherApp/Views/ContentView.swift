//
//  ContentView.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 06/02/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    var backgroundGradientColors: [Color] = [.blue, .white]
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // MARK: - Background
                LinearGradient(colors: backgroundGradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    
                    // MARK: Content
                    VStack(spacing: 20) {
                        CurrentDayWeatherStatusView()
                        WeeklyWeatherStatusView()
                    }
                    Spacer()
                    
                    // MARK: Footer
                    CustomButtonView(gemometricWidth: geometry)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
