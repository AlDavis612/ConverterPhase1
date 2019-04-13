//
//  ConverterViewController.swift
//  Calculator
//
//  Created by Alex Davis on 4/12/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    
    var inputValue: String = ""
    var outputValue: String = ""
    
    var conversions = [conversion(label: "fahrenheit to celcius", input: "°F", output: "°C"),
                       conversion(label: "celcius to fahrenheit", input: "°C", output: "°F"),
                       conversion(label: "miles to kilometers", input: "mi", output: "km"),
                       conversion(label: "kilometers to miles", input: "km", output: "mi")]
    
    var currentConversion: conversion?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputValue = ""
        outputValue = ""
        inputDisplay.text = conversions[0].input
        outputDisplay.text = conversions[0].output
        currentConversion = conversions[0]
        // Do any additional setup after loading the view.
    }
    

    @IBAction func converterButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: UIAlertController.Style.actionSheet)
        for convType in conversions {
            alert.addAction(UIAlertAction(title: convType.label, style: UIAlertAction.Style.default, handler: { (alertAction) in
                self.inputDisplay.text = convType.input
                self.outputDisplay.text = convType.output
                self.currentConversion = convType
            }))
    }
        self.present(alert, animated:true, completion: nil)
    }
    
}
