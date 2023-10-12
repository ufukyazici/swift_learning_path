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
        NavigationView{
            ScrollView{
                LazyVGrid(columns:columns){
                    ForEach(MockData.frameworks){ framework in
                        GridItemView(framework: framework)
                    }
                }
                .navigationTitle("🚀 Frameworks")
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct GridItemView:View {
    let framework:Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 100,height: 100)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
