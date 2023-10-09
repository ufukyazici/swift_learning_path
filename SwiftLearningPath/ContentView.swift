//
//  ContentView.swift
//  SwiftLearningPath
//
//  Created by Ufuk YAZICI on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(firstColor: .blue,
                           secondColor: .white)
            VStack(){
                CityNameView(cityName: "Çınarcık")
                WeatherDetailsView(weatherImage: "sun.max.fill", degree: 18)
                Spacer()
                HStack(spacing:30){
                    WeatherView(day: "Pzt", imageName: "cloud.snow", degree: 20)
                    WeatherView(day: "Sal", imageName: "smoke.fill", degree:16)
                    WeatherView(day: "Çar", imageName: "sun.max.fill", degree:25)
                    WeatherView(day: "Per", imageName: "smoke.fill", degree:16)
                    WeatherView(day: "Cum", imageName: "cloud.snow", degree:16)
                }
                Spacer()
                Button{
                    
                    
                } label: {
                    WeatherButtonView(buttonText: "Change Day Time",
                                      backgroundColor: .white,
                                      textColor: .blue)
                }
                Spacer()
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherView: View {
    var day:String
    var imageName:String
    var degree:Int
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 20))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 40,height: 40)
            Text("\(degree)°")
                .font(.system(size: 20))
        }
    }
}

struct BackgroundView: View {
    var firstColor: Color
    var secondColor: Color
    
    var body:some View{
        LinearGradient(colors: [firstColor,secondColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct CityNameView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 50,weight: .medium))
            .padding(.top,20)
            .foregroundColor(.white)
    }
}

struct WeatherDetailsView: View {
    var weatherImage: String
    var degree:Int
    var body: some View {
        VStack{
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .frame(width: 180,height: 180)
            Text("\(degree)°")
                .font(.system(size: 70))
                .foregroundColor(.white)
        }
    }
}

struct WeatherButtonView:View {
    var buttonText: String
    var backgroundColor: Color
    var textColor: Color
    var body: some View {
        Text(buttonText)
            .font(.system(size: 30,weight: .bold))
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(9)
    }
}
