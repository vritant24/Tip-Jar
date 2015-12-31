//
//  ViewController.swift
//  Tip Jar
//
//  Created by vritant bhardwaj on 10/12/15.
//  Copyright © 2015 vritant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var defaults = 0;
    var finalTotal = 0.0;
    
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var numberPeople: UITextField!
    
    @IBOutlet weak var dividedTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaults = NSUserDefaults.standardUserDefaults().integerForKey("123")
        tipPercentage.selectedSegmentIndex = defaults
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentages[tipPercentage.selectedSegmentIndex]
        let total = billAmount + tip
        
        finalTotal = total;
        
        tipLabel.text = String(format: "  $ %.2f", tip);
        totalLabel.text = String(format: "  $ %.2f", total);
        
        let number = NSString(string: numberPeople.text!).doubleValue
        print(number);
        let charge = total / number
        
        dividedTotal.text = String(format: "  $ %.2f", charge);
    }
    
    @IBAction func onEditingPeopleNumberChanged(sender: AnyObject) {
        
        let number = NSString(string: numberPeople.text!).doubleValue
        
        let charge = finalTotal / number
       
        dividedTotal.text = String(format: "  $ %.2f", charge);

    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
    
    override func viewDidAppear(animated: Bool) {
        
        defaults = NSUserDefaults.standardUserDefaults().integerForKey("123")
        tipPercentage.selectedSegmentIndex = defaults
        
        
    }
}