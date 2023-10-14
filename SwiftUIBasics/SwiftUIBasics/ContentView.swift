//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Ufuk YAZICI on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image(systemName: "icloud")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160,height: 160)
                Text("iCloud")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                HStack{
                    Spacer()
                    Image(systemName: "icloud.fill")
                        .renderingMode(.original)
                    Spacer()
                    Image(systemName: "icloud.fill")
                        .renderingMode(.original)
                    Spacer()
                    Image(systemName: "icloud.fill")
                        .renderingMode(.original)
                    Spacer()
                }

            }
            
    }
    }
}

#Preview {
    ContentView()
}
