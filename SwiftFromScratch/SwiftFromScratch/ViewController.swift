//
//  ViewController.swift
//  SwiftFromScratch
//
//  Created by Ufuk YAZICI on 28.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleString: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButton(_ sender: Any) {
        titleString.text = "XD"
    }
    
}

