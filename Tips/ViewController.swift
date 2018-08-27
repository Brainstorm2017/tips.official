//
//  ViewController.swift
//  Tips
//
//  Created by user144166 on 8/20/18.
//  Copyright © 2018 user144166. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculatetip(_ sender: Any) {
        
        let tippercentages = [0.05, 0.10, 0.15]
        let bill = Double(billfield.text!) ?? 0
        let tip = bill * tippercentages[tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

