//
//  ViewController+NibExtension.swift
//  protocol-extension-learn
//
//  Created by Ufuk YAZICI on 30.10.2023.
//

import Foundation
import UIKit

public extension UIViewController {
    /// Load generic view controller from nib
    /// - Returns: Generic [T] View Controller
    static func loadNib<T: UIViewController>() -> T {
        return T(nibName: String(describing: self), bundle: nil)
    }
}
