//
//  WeeklyWeatherViewModel.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 10/02/24.
//

import SwiftUI
import Combine

class WeatherViewModel: ObservableObject {
    
    //MARK: Properties
    @Published var weeklyWeatherStatusModel: [WeeklyWeatherModel]?
    @Published var customButtonModel: CustomButtonModel?
    @Published var currentDayWeatherModel: CurrentDayWeatherModel?
    
    //MARK: Methods
    func fetchWeeklyWheather() {
        weeklyWeatherStatusModel = [WeeklyWeatherModel(
            day: "MON",
            image: "cloud.sun.fill",
            temperature: Measurement(value: 30, unit: .celsius)),
                                    WeeklyWeatherModel(
                                        day: "TUE",
                                        image: "sun.max.fill",
                                        temperature: Measurement(value: 45, unit: .celsius)),
                                    WeeklyWeatherModel(
                                        day: "WED",
                                        image: "wind.snow",
                                        temperature: Measurement(value: 12, unit: .celsius)),
                                    WeeklyWeatherModel(
                                        day: "THU",
                                        image: "sunset.fill",
                                        temperature: Measurement(value: 20, unit: .celsius)),
                                    WeeklyWeatherModel(
                                        day: "FRI",
                                        image: "snow",
                                        temperature: Measurement(value: 5, unit: .celsius)),
                                    WeeklyWeatherModel(
                                        day: "SAT",
                                        image: "sun.max.fill",
                                        temperature: Measurement(value: 50, unit: .celsius)),
                                    WeeklyWeatherModel(
                                        day: "SUN",
                                        image: "cloud.sun.fill",
                                        temperature: Measurement(value: 30, unit: .celsius))]
    }
    
    func configureCustomButton(geometricWidth: GeometryProxy) {
        customButtonModel = CustomButtonModel(
            buttonTitle: "Change date time",
            width: geometricWidth.size.width / 1.3,
            buttonClicked: {})
    }
    
    func configureCurrentDayWeather() {
        currentDayWeatherModel = CurrentDayWeatherModel(
            place: "Kolkata",
            image: "cloud.sun.fill",
            temperature: Measurement(value: 30, unit: .celsius))
    }
    
}
