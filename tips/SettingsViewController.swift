//
//  SettingsViewController.swift
//  tips
//
//  Created by Saket Agarwal on 8/31/14.
//  Copyright (c) 2014 Saket Agarwal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var tipDefaultControl: UISegmentedControl
   

    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults.standardUserDefaults()
        tipDefaultControl.selectedSegmentIndex = defaults.integerForKey("default_tip")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onValueChanged(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipDefaultControl.selectedSegmentIndex, forKey: "default_tip")
        defaults.synchronize()
    }
}
