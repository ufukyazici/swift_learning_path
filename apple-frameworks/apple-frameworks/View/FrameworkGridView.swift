//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 12.10.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        GridItemView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("🚀 Frameworks")
                .sheet(isPresented: $viewModel.isShowing){
                    FrameworkDeatilsView(isShowingDetailView: $viewModel.isShowing, framework: viewModel.selectedFramework ?? MockData.sampleFramework)
                }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

