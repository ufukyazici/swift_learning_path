//
//  FrameworkDeatilsView.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 12.10.2023.
//

import SwiftUI

struct FrameworkDeatilsView: View {
    @Binding var isShowingDetailView: Bool
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
                
            }label: {
                LMButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDeatilsView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}
