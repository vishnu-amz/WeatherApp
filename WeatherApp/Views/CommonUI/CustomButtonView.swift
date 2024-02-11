//
//  CustomButtonView.swift
//  WeatherApp
//
//  Created by Vishnu - iOS on 11/02/24.
//

import SwiftUI

struct CustomButtonView: View {
    
    // MARK: Properties
    var customButtonModel: CustomButtonModel?
    
    // MARK: Init
    init(customButtonModel: CustomButtonModel? = nil) {
        self.customButtonModel = customButtonModel
    }
    
    // MARK: Body
    var body: some View {
        VStack {
            Button(action: {
                if let buttonClickedClosure = customButtonModel?.buttonClicked {
                    buttonClickedClosure()
                }
            }) {
                Text(customButtonModel?.buttonTitle ?? "")
                    .bold()
                    .frame(width: customButtonModel?.width,
                           height: customButtonModel?.height)
                    .foregroundColor(.blue)
                    .background(.white)
                    .cornerRadius(10)
            }
        }
    }
    
    
}
