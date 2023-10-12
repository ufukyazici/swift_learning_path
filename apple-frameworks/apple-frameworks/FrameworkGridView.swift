//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 12.10.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
    ]
    var body: some View {
        ZStack{
            LazyVGrid(columns:columns){
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                GridItemView(name: "App Clip", imageName: "app-clip")
                
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct GridItemView:View {
    let name:String
    let imageName:String
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 100,height: 100)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
