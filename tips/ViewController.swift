//
//  ViewController.swift
//  tips
//
//  Created by Chuck Dries on 12/16/15.
//  Copyright © 2015 Chuck Dries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPicker: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        billField.placeholder = "$0.00"
        totalLabel.text = "$0.00"
        view.endEditing(false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onEditingChanged(sender: AnyObject) {


        var billAmount = NSString(string: billField.text!).doubleValue
        let tipPercentage = [0.18, 0.20, 0.22]
        var tip = billAmount * tipPercentage[tipPicker.selectedSegmentIndex]
        var total = tip + billAmount
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)


    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }


}
 