//
//  WeeklyWheatherStatus.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 10/02/24.
//

import SwiftUI

struct WeeklyWeatherStatusView: View {
    
    // MARK: Properties
    var weeklyWeatherModel: [WeeklyWeatherModel]?
    
    // MARK: Init
    init(weeklyWeatherModel: [WeeklyWeatherModel]? = nil) {
        self.weeklyWeatherModel = weeklyWeatherModel
    }
    
    // MARK: Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false,  content: {
            HStack {
                if let weeklyWeather = weeklyWeatherModel {
                    ForEach(weeklyWeather, id: \.day) { day in
                        VStack {
                            Text(day.day ?? "")
                                .font(.system(size: 20, weight: .regular, design: .default))
                                .foregroundColor(.white)
                            Image(systemName: day.image ?? "").renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("\(Int(day.temperature?.value ?? 0.0))°")
                                .font(.system(size: 28, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                }
            }
        })
        .padding(EdgeInsets(top: 40, leading: 30, bottom: 0, trailing: 30))
    }
}
