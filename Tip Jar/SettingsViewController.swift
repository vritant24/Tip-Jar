//
//  SettingsViewController.swift
//  Tip Jar
//
//  Created by vritant bhardwaj on 10/12/15.
//  Copyright © 2015 vritant. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var defaults = 0;
    
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaults = NSUserDefaults.standardUserDefaults().integerForKey("123")
        tipPercentage.selectedSegmentIndex = defaults
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func setDefaultSegment(sender: AnyObject) {
        let segmentControl = sender as! UISegmentedControl
        
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(segmentControl.selectedSegmentIndex, forKey: "123")
        defaults.synchronize()
    }

}
