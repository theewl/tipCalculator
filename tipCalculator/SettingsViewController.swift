//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Eric Liang on 3/18/19.
//  Copyright © 2019 theEWL. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultChanger: UISegmentedControl!
    
    
    @IBAction func defaultSegments(_ sender: Any)
    {
        let defaults = UserDefaults.standard
        
        let tipPercentages = [ 0.15, 0.18, 0.2]
        defaults.set(tipPercentages[defaultChanger.selectedSegmentIndex], forKey: "myDouble")
        
        let doubleValue = defaults.double(forKey: "myDouble")
        
        if( doubleValue == 0.15)
        {
            defaults.set(0, forKey: "myInt")
        }
        else if ( doubleValue == 0.18)
        {
            defaults.set(1, forKey: "myInt")
        }
        else if (doubleValue == 0.20)
        {
            defaults.set(2, forKey: "myInt")
        }
        
        defaults.synchronize()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
