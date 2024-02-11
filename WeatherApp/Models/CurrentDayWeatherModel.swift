//
//  CurrentDayWeatherModel.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 11/02/24.
//

import Foundation

//MARK: CurrentDayWeatherModel
struct CurrentDayWeatherModel {
    let place: String?
    let image: String?
    let temperature: Measurement<UnitTemperature>?
}
