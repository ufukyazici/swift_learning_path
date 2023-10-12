//
//  FrameworkDeatilsView.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 12.10.2023.
//

import SwiftUI

struct FrameworkDeatilsView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("swiftui")
                .resizable()
                .frame(width: 120,height: 120)
            Text("SwiftUI")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            Text("SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.")
                .padding()
                .fontWeight(.semibold)
            Spacer()
            Button{
                
            }label: {
                Text("Learn More")
                    .frame(width: 280,height:50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}

#Preview {
    FrameworkDeatilsView()
}
