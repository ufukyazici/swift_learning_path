//
//  XButton.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 13.10.2023.
//

import SwiftUI

struct XButton : View {
    @Binding var isShowingDetailView: Bool

    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44,height: 44)
            }
            .padding()
        }
    }
}

#Preview {
    XButton(isShowingDetailView: .constant(false))
}

