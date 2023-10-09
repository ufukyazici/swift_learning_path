//
//  ContentView.swift
//  SwiftLearningPath
//
//  Created by Ufuk YAZICI on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    let data = [
        WeatherModel(day: "Pzt", imageName: "smoke.fill", degree: 15),
        WeatherModel(day: "Sal", imageName: "sun.max.fill", degree: 25),
        WeatherModel(day: "Çar", imageName: "smoke.fill", degree: 16),
        WeatherModel(day: "Per", imageName: "sun.max.fill", degree: 25),
        WeatherModel(day: "Cum", imageName: "smoke.fill", degree: 13)

    ]
    var body: some View {
        ZStack{
            //BackgroundView(isNight: isNight)
            ContainerRelativeShape()
                .fill(isNight ? Color.black.gradient : Color.blue.gradient)
                .ignoresSafeArea()
                
            VStack(){
                CityNameView(cityName: "Çınarcık")
                WeatherDetailsView(weatherImage: isNight ? "moon.stars.fill" :"sun.max.fill", degree: 18)
                Spacer()
                HStack(spacing:30){
                    ForEach(data,id:\.self) { datum in
                        WeatherView(day: datum.day, imageName: datum.imageName, degree: datum.degree)
                    }
                }
                Spacer()
                Button{
                    isNight.toggle()
                    
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
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .frame(width: 40,height: 40)
            Text("\(degree)°")
                .foregroundStyle(.white)
                .font(.system(size: 20))
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    var body:some View{
        LinearGradient(colors: [isNight ? .black : .blue,
                       isNight ? .gray : .white],
                       startPoint: .topLeading, endPoint: .bottomTrailing)
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
                .symbolRenderingMode(.multicolor)
                .resizable()
                .frame(width: 180,height: 180)
            Text("\(degree)°")
                .font(.system(size: 70))
                .foregroundColor(.white)
        }
    }
}

struct WeatherModel:Hashable{
    var day:String
    var imageName:String
    var degree:Int
}
