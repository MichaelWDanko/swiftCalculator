//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Michael Danko on 3/29/17.
//  Copyright © 2017 Michael Danko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var txtFirstNumber: UITextField!
    @IBOutlet weak var txtSecondNumber: UITextField!
    @IBOutlet weak var txtResults: UITextField!
    
    @IBOutlet weak var btnAddOUTLET: UIButton!
    @IBOutlet weak var btnSubtractOUTLET: UIButton!
    @IBOutlet weak var btnMultiplyOUTLET: UIButton!
    @IBOutlet weak var btnDivideOUTLET: UIButton!
    
    @IBOutlet weak var btnClearOUTLET: UIButton!
    
    let buttonBGColor = UIColor.lightGray
//    let buttonBGColor = UIColor.
    let buttonTextColor = UIColor.darkGray
    
    var firstDigit : Double = 0
    var secondDigit : Double = 0
    var finalResult : Double = 0
    /*
     Need to be able to initialize a variable without declaring it
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initText()
        initBtn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initText(){
        lblHeader.text = lblHeader.text?.uppercased()
        lblHeader.textColor = UIColor.darkGray
        
        txtFirstNumber.borderStyle = .roundedRect
        txtSecondNumber.borderStyle = .roundedRect
        txtResults.borderStyle = .roundedRect
    }
    
    func initBtn (){
        btnAddOUTLET.backgroundColor = buttonBGColor
        btnSubtractOUTLET.backgroundColor = buttonBGColor
        btnMultiplyOUTLET.backgroundColor = buttonBGColor
        btnDivideOUTLET.backgroundColor = buttonBGColor
        
        btnAddOUTLET.titleLabel?.textColor = buttonTextColor
        btnSubtractOUTLET.titleLabel?.textColor = buttonTextColor
        btnMultiplyOUTLET.titleLabel?.textColor = buttonTextColor
        btnDivideOUTLET.titleLabel?.textColor = buttonTextColor
        
        btnClearOUTLET.titleLabel?.textColor = buttonTextColor
    }

    func numberify() {
        // isNumeric returns a boolean of if a string passed to it is a number.
        func isNumeric (numericTest: String) -> Bool {
            return Double(numericTest) != nil
        }
        
        // If the first text field has a number, then convert it to a double
        if isNumeric(numericTest: txtFirstNumber.text!) {
            print("first number is a number")
            firstDigit = Double(txtFirstNumber.text!)!
        } else {
            print("first number is not a number")
        }
        // If the second text field has a number, then convert it to a double
        if isNumeric(numericTest: txtSecondNumber.text!) {
            print("second number is a number")
            secondDigit = Double(txtSecondNumber.text!)!
        } else {
            print("second number is not a number")
        }
    }
    
    
    @IBAction func btnAddACTION(_ sender: UIButton) {
        print("Adding...")
        numberify()
        finalResult = firstDigit + secondDigit
        txtResults.text = String(finalResult)
    }
    
    @IBAction func btnSubtractACTION(_ sender: UIButton) {
        print("Subtracting...")
        numberify()
        finalResult = firstDigit - secondDigit
        txtResults.text = String(finalResult)
    }
    
    @IBAction func btnMultiplyACTION(_ sender: UIButton) {
        print("Multiplying...")
        numberify()
        finalResult = firstDigit * secondDigit
        txtResults.text = String(finalResult)
    }
    
    @IBAction func btnDivideACTION(_ sender: UIButton) {
        print("Dividing...")
        numberify()
        finalResult = firstDigit / secondDigit
        txtResults.text = String(finalResult)
    }
    
    @IBAction func btnClearACTION(_ sender: UIButton) {
        print("Cleared!")
        txtFirstNumber.text = ""
        txtSecondNumber.text = ""
    }


}

