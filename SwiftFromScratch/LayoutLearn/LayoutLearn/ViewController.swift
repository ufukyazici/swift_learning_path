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
        //LABEL
        let myLabel = UILabel()
        myLabel.text = "TEST LABEL"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x:width * 0.5 - width * 0.8 / 2,y:height*0.5 - 50,width: width * 0.8,height: 100)
        view.addSubview(myLabel)
        //BUTTON
        let myButton = UIButton()
        myButton.setTitle("Click", for: .normal)
        myButton.setTitleColor(UIColor.gray, for: .normal)
        myButton.backgroundColor = .orange
        myButton.layer.cornerRadius = 16
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.8, width: 200, height: 60)
        myButton.addTarget(self, action: #selector(ViewController.placeHolder), for: .touchUpInside)
        view.addSubview(myButton)
    }
    
    @IBAction func placeHolder() {
        print("Button pressed")
    }


}

//#Preview {    ViewController()}

