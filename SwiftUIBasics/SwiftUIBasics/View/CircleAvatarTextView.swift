//
//  CircleAvatarTextView.swift
//  SwiftUIBasics
//
//  Created by Ufuk YAZICI on 27.10.2023.
//

import SwiftUI
import Kingfisher

struct CircleAvatarTextView: View {
    let imageUrl: String
    let imageText: String
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl))
                .fade(duration: 0.5)
                .resizable()
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(imageText)
        }
    }
}


