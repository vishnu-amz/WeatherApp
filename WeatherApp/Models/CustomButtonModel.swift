//
//  CustomButton.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 10/02/24.
//

import Foundation

// MARK: CustomButtonModel
struct CustomButtonModel {
    let buttonTitle: String?
    let width: CGFloat?
    let height: CGFloat? = 50
    let buttonClicked: (() -> Void)?
}
