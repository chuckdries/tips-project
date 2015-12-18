//
//  ViewController.swift
//  tips
//
//  Created by Chuck Dries on 12/16/15.
//  Copyright © 2015 Chuck Dries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let brightPaleGreen = UIColor(red: 161/256, green: 230/255, blue: 169/255, alpha: 1)
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPicker: UISegmentedControl!
    @IBOutlet weak var tipInputContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        billField.placeholder = "$"
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
        tipInputContainer.backgroundColor = UIColor.clearColor()
    }
    @IBAction func billFieldHasFocus(sender: AnyObject) {
        tipInputContainer.backgroundColor = brightPaleGreen
    }


}
 