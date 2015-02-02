//
//  ViewController.swift
//  Calculator
//

//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        //println("digit = \(digit)")
        
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            enter()
        }
        switch operation {
            case "×":
        if operandStack.count >= 2 {
            displayValue = operandStack.removeLast() * operandStack.removeLast()
            enter()
            }
//            case "÷":
//            case "+":
//            case "−":
        default: break
        }
        
    }
    
    var operandStack = Array <Double>()
    
    @IBAction func enter() {
        
        userIsInTheMiddleOfTypingANumber = false
        
        operandStack.append( displayValue )
        
        println("operandStack = \(operandStack)")
        
    }
    var displayValue :Double {
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
            
        }
    }
}

