//
//  ViewController.swift
//  VladykinCalc
//
//  Created by Klementiy on 18/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var operand = ""
    var numberOne = ""
    var numberTwo = ""

    @IBOutlet weak var resultLabel: UILabel!
    
    /* ри нажатии на цифры, значение будет
 передаваться в переменную numberOne и отображаться элементе resultLabel.
 Далее если будет нажата кнопка с операндом значение будет записываться в
 переменную operand, и пользователь может ввести второе число, которое в свою
 очередь будет записываться в переменную numberTwo. После нажатия на кнопку
 равно будет выводит итог в resultLabel
 */
    
    @IBAction func inputNumber(_ sender: UIButton) {
        
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        } else {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    
    // zeroing function
    
    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    // keystroke handling function
    
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    
    @IBAction func resultAction(_ sender: Any) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! /
            Double(numberTwo)!
        case "*":
            result = Double(numberOne)! *
            Double(numberTwo)!
        case "+":
            result = Double(numberOne)! +
            Double(numberTwo)!
        case "-":
            result = Double(numberOne)! -
            Double(numberTwo)!
        default:
            break
        }
        
        if result.truncatingRemainder(dividingBy: 1.0)  ==
            00 {
            resultLabel.text = String(Int(result))
        } else {
            resultLabel.text = String(result)
        }
    }
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
    }


}

