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
    let buttonTextColor = UIColor.darkGray
    
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

    @IBAction func btnAddACTION(_ sender: UIButton) {
        print("Adding...")
    }
    @IBAction func btnSubtractACTION(_ sender: UIButton) {
        print("Subtracting...")
    }
    @IBAction func btnMultiplyACTION(_ sender: UIButton) {
        print("Multiplying...")
    }
    @IBAction func btnDivideACTION(_ sender: UIButton) {
        print("Dividing...")
    }
   
    @IBAction func btnClearACTION(_ sender: UIButton) {
        print("Cleared!")
    }


}

