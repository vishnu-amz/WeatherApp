//
//  ContentView.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 06/02/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    @StateObject var viewModel = WeatherViewModel()
    
    @State private var isNightMode = false
    @State private var backgroundColors: [Color] = [.blue, .white]
    @State private var foregroundColors: Color = .yellow
    
    private var screenSize = UIScreen.main.bounds
    
    // MARK: - Body
    var body: some View {
        ZStack {
            
            // MARK: - Background
            BackgroundView(backgroundColors: $backgroundColors)
            VStack {
                
                // MARK: Content
                VStack(spacing: 20) {
                    CurrentDayWeatherStatusView(currentDayWeatherModel: viewModel.currentDayWeatherModel, foregroundColors: $foregroundColors)
                    WeeklyWeatherStatusView(weeklyWeatherModel: viewModel.weeklyWeatherStatusModel, foregroundColors: $foregroundColors)
                }
                Spacer()
                
                // MARK: Footer
                CustomButtonView(customButtonModel: viewModel.customButtonModel)
                Spacer()
                
            }.onAppear {
                viewModel.configureCurrentDayWeather()
                viewModel.fetchWeeklyWheather()
                viewModel.configureCustomButton(width: screenSize.width / 1.3, buttonClicked: {
                    isNightMode.toggle()
                    backgroundColors = isNightMode ? [.black, .white] : [.blue, .white]
                    foregroundColors = isNightMode ? .red : .yellow
                })
            }
            
        }
    }
    
}

#Preview {
    ContentView()
}
