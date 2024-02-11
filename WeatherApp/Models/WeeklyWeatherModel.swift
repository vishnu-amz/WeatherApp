//
//  WeeklyWeatherStatusModel.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 10/02/24.
//

import Foundation

// MARK: WeeklyWeatherModel
struct WeeklyWeatherModel {
    let day: String?
    let image: String?
    let temperature: Measurement<UnitTemperature>?
}
