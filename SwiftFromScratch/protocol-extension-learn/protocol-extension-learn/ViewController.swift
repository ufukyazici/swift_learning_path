//
//  ViewController.swift
//  protocol-extension-learn
//
//  Created by Ufuk YAZICI on 29.10.2023.
//

import UIKit

class ViewController: UIViewController, SampleProtocol {
    var userType: UserType = .ADMIN
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeBackgroundColor()
    }
}

//#Preview {ViewController()}
