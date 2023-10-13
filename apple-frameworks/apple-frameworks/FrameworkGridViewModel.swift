//
//  FrameworkGridViewModel.swift
//  apple-frameworks
//
//  Created by Ufuk YAZICI on 13.10.2023.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    var selectedFramework:Framework?{
        didSet{
            isShowing = true
        }
    }
    
    @Published var isShowing = false
}
