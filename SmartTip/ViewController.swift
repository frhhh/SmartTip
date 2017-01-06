//
//  ViewController.swift
//  SmartTip
//
//  Created by Frank Hu on 2016/12/18.
//  Copyright © 2016年 Weichu Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billFiled: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Thread.sleep(forTimeInterval: 2.0) //延长3秒
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func OnTap(_ sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPer = [0.15, 0.18, 0.2, 0.25]
        
        let bill = Double(billFiled.text!) ?? 0
        let tip = bill * tipPer[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

