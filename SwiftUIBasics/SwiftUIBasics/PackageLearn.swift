//
//  PackageLearn.swift
//  SwiftUIBasics
//
//  Created by Ufuk YAZICI on 27.10.2023.
//

import SwiftUI
import Kingfisher


struct PackageLearn: View {
    private let imageUrl: String = "https://picsum.photos/200/300"
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        KFImage(URL(string: imageUrl))
            .fade(duration: 0.5)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PackageLearn()
}
