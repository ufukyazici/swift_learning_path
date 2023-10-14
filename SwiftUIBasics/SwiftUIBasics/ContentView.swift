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
            VStack{
                Image(systemName: "icloud")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 180,height: 180)
                    .scaledToFit()
                Text("iCloud")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            HStack{
                Image(systemName: "icloud.fill")
                    .renderingMode(.original)
                Image(systemName: "icloud.fill")
                    .renderingMode(.original)
                Image(systemName: "icloud.fill")
                    .renderingMode(.original)
            }
        }
    }
}

#Preview {
    ContentView()
}
