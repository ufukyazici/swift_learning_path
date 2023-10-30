//
//  SampleExtensionViewController.swift
//  protocol-extension-learn
//
//  Created by Ufuk YAZICI on 30.10.2023.
//

import UIKit

class SampleExtensionViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let sampleView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        sampleView.backgroundColor = .red
        sampleView.layer.cornerRadius = 12
        sampleView.clipsToBounds = true
        view.addSubview(sampleView)
    }
}

// #Preview { SampleExtensionViewController() }
