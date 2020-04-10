//
//  ViewController.swift
//  temperatureConverter
//
//  Created by adil gupta on 10/04/20.
//  Copyright © 2020 priyam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var celsius: UILabel!
    @IBOutlet weak var fahrenheit: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var celsiusValue: UITextField!
    @IBOutlet weak var fahrenheitValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertCel(_ sender: Any) {
        if let cel = Double(celsiusValue.text!) {
            let f = (cel * 9/5) + 32
            answer.text = ("\(f)F")
        }
        else {
            answer.text = ("error, enter a number")
        }
        view.backgroundColor = UIColor.green
    }
    
    @IBAction func convertFah(_ sender: Any) {
        if let fah = Double(fahrenheitValue.text!) {
            let c = (fah - 32) * 5/9
            answer.text = ("\(c)C")
        }
        else {
            answer.text = ("error, print a number")
        }
        view.backgroundColor = UIColor.yellow
    }
}




