//
//  WeatherButton.swift
//  SwiftLearningPath
//
//  Created by Ufuk YAZICI on 9.10.2023.
//

import SwiftUI


struct WeatherButtonView:View {
    var buttonText: String
    var backgroundColor: Color
    var textColor: Color
    var body: some View {
        Text(buttonText)
            .font(.system(size: 20,weight: .medium))
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(9)
    }
}
