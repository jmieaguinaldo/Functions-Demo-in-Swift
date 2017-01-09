//
//  ViewController.swift
//  Functions Demo
//
//  Created by Jamie Rose Aguinaldo on 04/01/2017.
//  Copyright © 2017 Jamie Rose Aguinaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var txtNum1: UITextField!
    @IBOutlet weak var txtNum2: UITextField!
    @IBOutlet weak var txtNum3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Display a function without a parameter
        lblOne.text = setTextToLblOne()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setTextToLblOne() -> String{
        return "This is label one."
    }
    
    func setTextToLblTwo(firstNum: Double, secondNum:Double, thirdNum:Double) -> String{
        let total:Double = (firstNum + secondNum + thirdNum)/3
        return "\(total)"
    }
    
    @IBAction func compute(_ sender: Any) {
        // Display a function with multiple parameters
        let num1:Double = Double(txtNum1.text!)!
        let num2:Double = Double(txtNum2.text!)!
        let num3:Double = Double(txtNum3.text!)!
        
        lblOutput.text = setTextToLblTwo(firstNum: num1, secondNum: num2, thirdNum: num3)
    }
    
}

