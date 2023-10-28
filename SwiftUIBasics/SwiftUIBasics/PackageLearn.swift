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
        CircleAvatarTextView(imageUrl: imageUrl, imageText: "Veli")
        
        
    }
}

#Preview {
    PackageLearn()
}
