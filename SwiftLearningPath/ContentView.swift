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
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(){
                Text("Çınarcık")
                    .font(.system(size: 50,weight: .medium))
                    .padding(.top,20)
                    .foregroundColor(.white)
                VStack{                Image(systemName: "cloud.sleet.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 180,height: 180)
                    Text("5°")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
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
                    Text("Change day time")
                        .font(.system(size: 30,weight: .bold))
                        .frame(width: 280,height: 50)
                        .background(Color.white)
                        .cornerRadius(9)
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
