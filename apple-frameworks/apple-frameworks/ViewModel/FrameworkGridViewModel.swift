//
//  FrameworkGridViewModel.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 13.10.2023.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    var selectedFramework:Framework?{
        didSet{ isShowing = true }
    }
    
    @Published var isShowing = false
}
