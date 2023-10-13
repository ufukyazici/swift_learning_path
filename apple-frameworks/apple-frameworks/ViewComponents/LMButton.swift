//
//  LMButton.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 13.10.2023.
//

import SwiftUI

struct LMButton: View {
    let title:String
    var body: some View {
        Text(title)
            .frame(width: 280,height:50)
            .background(Color.orange)
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
        
    }
}

#Preview {
    LMButton(title: "data")
}
