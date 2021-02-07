//
//  ViewController.swift
//  Prework
//
//  Created by Jasmine Cameron on 2/6/21.
//  Copyright © 2021 Jasmine Cameron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

