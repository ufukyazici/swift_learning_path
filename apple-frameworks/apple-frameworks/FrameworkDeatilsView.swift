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
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
    }
}

#Preview {
    FrameworkDeatilsView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}
