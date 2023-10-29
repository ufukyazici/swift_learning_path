//
//  ViewController.swift
//  LayoutLearn
//
//  Created by Ufuk YAZICI on 29.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "TEST LABEL"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x:width * 0.5 - width * 0.8 / 2,y:height*0.5 - 50,width: width * 0.8,height: 100)
        view.addSubview(myLabel)
    }


}

#Preview {    ViewController()}

