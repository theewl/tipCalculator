//
//  ViewController.swift
//  tipCalculator
//
//  Created by Eric Liang on 3/18/19.
//  Copyright © 2019 theEWL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        let defaults = UserDefaults.standard
        let doubleValue = defaults.double(forKey: "myDouble")
        
        let intValue = defaults.integer(forKey: "myInt")
        
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        
        let tip = bill * doubleValue
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        tipControl.selectedSegmentIndex = intValue
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
    }

    @IBAction func onTap(_ sender: Any)
    {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        
        //Calculate the tip and total
        let tipPercentages = [ 0.15, 0.18, 0.2]
        
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

