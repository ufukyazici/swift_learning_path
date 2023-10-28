//
//  ViewController.swift
//  Calculator
//
//  Created by Ufuk YAZICI on 28.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var secondNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toAddButton(_ sender: Any) {
        if let firstNum = Float(firstNumber.text!) {
            if let secondNum = Float(secondNumber.text!){
                resultText.text = "Result: \(firstNum+secondNum)"
            }
        }
    }
    @IBAction func toDivideButton(_ sender: Any) {
        if let firstNum = Float(firstNumber.text!) {
            if let secondNum = Float(secondNumber.text!){
                resultText.text = "Result: \(firstNum/secondNum)"
            }
        }
    }
    
    @IBAction func toMultiplyButton(_ sender: Any) {
        if let firstNum = Float(firstNumber.text!) {
            if let secondNum = Float(secondNumber.text!){
                resultText.text = "Result: \(firstNum*secondNum)"
            }
        }
    }
    @IBAction func toSubstractButton(_ sender: Any) {
        if let firstNum = Float(firstNumber.text!) {
            if let secondNum = Float(secondNumber.text!){
                resultText.text = "Result: \(firstNum-secondNum)"
            }
        }
    }
}

