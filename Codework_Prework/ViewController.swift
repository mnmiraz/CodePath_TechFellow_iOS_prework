//
//  ViewController.swift
//  Codework_Prework
//
//  Created by Muhtasim Miraz on 10/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // get decimal pad keyboard
        billAmountTextField.keyboardType = .decimalPad
        // input goes directly to text field and changes to it are reflected on screen
        billAmountTextField.becomeFirstResponder()
    }


    @IBAction func calculateTip(_ sender: Any) {
        // get bill anount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip by multiplying tip * tip percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

