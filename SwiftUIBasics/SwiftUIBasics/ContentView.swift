//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Ufuk YAZICI on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var textField: String = ""
    @State var isChanged: Bool = true
    var body: some View {
        ZStack{
            // MARK: BACKGROUND COLOR
            LinearGradient(colors: [isChanged ? .red : .black, isChanged ? Color("color_random"):.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                // MARK: ICON AND TITLE
                Group{
                    Image(systemName: "icloud")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160,height: 160)
                    Text("iCloud")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    TextField("SA", text: $textField)
                    Image(systemName: textField.lowercased())
                    Button{
                        isChanged = !isChanged
                    }label: {
                        Text("Change Color")
                            .frame(width: 280,height: 50)
                            .background(Color.purple)
                            .cornerRadius(10)
                    }
                        
                    // MARK: HORIZONTAL ICONS
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
}

#Preview {
    ContentView()
}
