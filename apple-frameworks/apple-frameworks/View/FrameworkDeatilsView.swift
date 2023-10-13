//
//  FrameworkDeatilsView.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 12.10.2023.
//

import SwiftUI

struct FrameworkDeatilsView: View {
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView = false
    var framework:Framework
    var body: some View {
        VStack{
            XButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            GridItemView(framework: framework)
            Text(framework.description)
                .padding()
                .fontWeight(.semibold)
            Spacer()
            Button{
                isShowingSafariView = true
            }label: {
                LMButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
    }
}

#Preview {
    FrameworkDeatilsView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}
