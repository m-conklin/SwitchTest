//
//  ViewController.swift
//  SwitchTest3
//
//  Created by M Conklin on 2015-05-26.
//  Copyright (c) 2015 M Conklin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    @IBAction func buttonClicked(sender: UIButton) {
        if mySwitch.on {
            myTextField.text = "The Switch is Off"
            println("Switch is on")
            mySwitch.setOn(false, animated:true)
        } else {
            myTextField.text = "The Switch is On"
            mySwitch.setOn(true, animated:true)
        }
    }
    
    func stateChanged(switchState: UISwitch) {
        if switchState.on {
            myTextField.text = "The Switch is On"
        } else {
            myTextField.text = "The Switch is Off"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mySwitch.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
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

}
