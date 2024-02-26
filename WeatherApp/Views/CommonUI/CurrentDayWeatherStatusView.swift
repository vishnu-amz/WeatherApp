//
//  CurrentDayWeatherStatusView.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 11/02/24.
//

import SwiftUI

struct CurrentDayWeatherStatusView: View {
    
    // MARK: Properties
    var currentDayWeatherModel: CurrentDayWeatherModel?
    
    @Binding var foregroundColors: Color
    
    // MARK: Init
    init(currentDayWeatherModel: CurrentDayWeatherModel? = nil, foregroundColors: Binding<Color>) {
        self.currentDayWeatherModel = currentDayWeatherModel
        self._foregroundColors = foregroundColors
    }
    
    // MARK: - Body
    var body: some View {
        VStack {
            Text(currentDayWeatherModel?.place ?? "")
                .font(.system(size: 32, weight: .bold, design: .default))
                .foregroundColor(.white)
            Image(systemName: currentDayWeatherModel?.image ?? "").symbolRenderingMode(.hierarchical)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .foregroundStyle(foregroundColors)
            Text("\(Int(currentDayWeatherModel?.temperature?.value ?? 0.0))°")
                .font(.system(size: 40, weight: .heavy, design: .default))
                .foregroundColor(.white)
        }
    }
}
