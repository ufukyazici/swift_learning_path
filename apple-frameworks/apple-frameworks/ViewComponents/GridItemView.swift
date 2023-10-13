//
//  GridItemView.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 13.10.2023.
//

import SwiftUI

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
