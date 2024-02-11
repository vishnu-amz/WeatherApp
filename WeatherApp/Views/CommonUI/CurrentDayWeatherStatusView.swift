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
    
    // MARK: Init
    init(currentDayWeatherModel: CurrentDayWeatherModel? = nil) {
        self.currentDayWeatherModel = currentDayWeatherModel
    }
    
    var body: some View {
        VStack {
            Text(currentDayWeatherModel?.place ?? "")
                .font(.system(size: 32, weight: .bold, design: .default))
                .foregroundColor(.white)
            Image(systemName: currentDayWeatherModel?.image ?? "").renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(Int(currentDayWeatherModel?.temperature?.value ?? 0.0))°")
                .font(.system(size: 40, weight: .heavy, design: .default))
                .foregroundColor(.white)
        }
    }
}


