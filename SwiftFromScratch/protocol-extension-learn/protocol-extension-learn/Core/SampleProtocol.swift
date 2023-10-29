//
//  SampleProtocol.swift
//  protocol-extension-learn
//
//  Created by Ufuk YAZICI on 29.10.2023.
//

import UIKit
enum UserType{
    case ADMIN
    case USER
}
protocol SampleProtocol: UIViewController{
    var userType: UserType {get}
    func changeBackgroundColor()
}

extension SampleProtocol{
    var userType: UserType {
        get{return .USER}
    }
    func changeBackgroundColor() {
        view.backgroundColor = userType == .ADMIN ? .black : .blue
    }
}
