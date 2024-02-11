//
//  ContentView.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 06/02/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    @ObservedObject var viewModel = WeatherViewModel()
    
    private var backgroundGradientColors: [Color] = [.blue, .white]
    
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
                        CurrentDayWeatherStatusView(currentDayWeatherModel: viewModel.currentDayWeatherModel)
                        WeeklyWeatherStatusView(weeklyWeatherModel: viewModel.weeklyWeatherStatusModel)
                    }
                    Spacer()
                    
                    // MARK: Footer
                    CustomButtonView(customButtonModel: viewModel.customButtonModel)
                    Spacer()
                }.onAppear {
                        viewModel.configureCurrentDayWeather()
                        viewModel.fetchWeeklyWheather()
                        viewModel.configureCustomButton(geometricWidth: geometry)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
