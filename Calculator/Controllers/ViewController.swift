//
//  ViewController.swift
//  Calculator
//
//  Created by Khakim Zhumagaliyev on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var calculator = Calculator()
    
    func performAction(for buttonType: ButtonType) {
        switch buttonType {
        case .digit(let digit):
            calculator.setDigit(digit)
        case .operation(let operation):
            calculator.setOperation(operation)
        case .negative:
            calculator.toggleSign()
        case .percent:
            calculator.setPercent()
        case .decimal:
            calculator.setDecimal()
        case .equals:
            calculator.evaluate()
        case .allClear:
            calculator.allClear()
        }
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func numberPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            self.performAction(for: .digit(.one))
        case 2:
            self.performAction(for: .digit(.two))
        case 3:
            self.performAction(for: .digit(.three))
        case 4:
            self.performAction(for: .digit(.four))
        case 5:
            self.performAction(for: .digit(.five))
        case 6:
            self.performAction(for: .digit(.six))
        case 7:
            self.performAction(for: .digit(.seven))
        case 8:
            self.performAction(for: .digit(.eight))
        case 9:
            self.performAction(for: .digit(.nine))
        default:
            self.performAction(for: .digit(.zero))
        }
        updateResLabel()
    }
    
    func updateResLabel(){
        resultLabel.text = calculator.displayText
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        switch sender.tag {
        case 13:
            self.performAction(for: .operation(.addition))
        case 12:
            self.performAction(for: .operation(.subtraction))
        case 11:
            self.performAction(for: .operation(.multiplication))
        default:
            self.performAction(for: .operation(.division))
        }
        updateResLabel()
    }
    
    @IBAction func equalPressed(_ sender: UIButton) {
        self.performAction(for: .equals)
        updateResLabel()
    }
    
    @IBAction func percentPressed(_ sender: UIButton) {
        self.performAction(for: .percent)
        updateResLabel()
    }
    
    @IBAction func changeSignPressed(_ sender: UIButton) {
        self.performAction(for: .negative)
        updateResLabel()
    }
    
    @IBAction func dotPressed(_ sender: UIButton) {
        self.performAction(for: .decimal)
        updateResLabel()
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        self.performAction(for: .allClear)
        updateResLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateResLabel()
    }
}

