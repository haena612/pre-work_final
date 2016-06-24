//
//  ViewController.swift
//  tips
//
//  Created by Haena Kim on 6/24/16.
//  Copyright © 2016 Haena Kim. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    //Set variables
   
    @IBOutlet weak var TextField: UITextField!
    // customers can fill out this text field about the restaurent's service

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let DestViewController:SettingViewController = segue.destinationViewController as! SettingViewController
        // create a variable in SettingViewController class 
        
        DestViewController.LabelText = TextField.text!
        // set DestViewController (SettingViewController class) to be the input value from the textfield
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        //set initial values for tip and total as 0
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
    
        var tipPercentages = [0.18, 0.2, 0.25]
        // Set an array with three tip percentage values
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        // Set a new variable for tipPercentage values depending on user's selection among three array values
        let billAmount = NSString(string: billField.text!).doubleValue
        // Set a new variable to have the input value from the bill 
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        // Calculations
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        //Display the Calculated Values
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        // Display upto 2 decimal places
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }

}

