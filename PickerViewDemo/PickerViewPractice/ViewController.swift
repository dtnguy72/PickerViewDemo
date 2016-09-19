//
//  ViewController.swift
//  PickerViewPractice
//
//  Created by Danny Nguyen on 9/9/16.
//  Copyright © 2016 Danny Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var pizzaToppings = [
        
        ["Ham", "Sausage", "Bacon"],
        
        ["small", "medium", "large", "XL" , "XXL"],
        
        ["BBQ", "Italian", "Stuffed Crust"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Must add these two func when setting the UIPickerViewDataSource
    
//    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
//        return 1
//    }
//    
//    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        
//        return pizzaToppings.count
//    }
//    
//    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
//    
//    {
//        
//        return pizzaToppings[row]
//    }
//    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        
//        switch row {
//        case 0: self.view.backgroundColor = UIColor.whiteColor()
//        case 1: self.view.backgroundColor = UIColor.redColor()
//        case 2: self.view.backgroundColor = UIColor.greenColor()
//        default: self.view.backgroundColor = UIColor.lightGrayColor()
//    
//        }
//    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 3
    }
    
    // From the UIPickerViewDataSource protocol.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pizzaToppings[component].count
    }
    
    // From the UIPickerViewDataSource protocol.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pizzaToppings[component][row]
    }
    
    // From the UIPickerViewDelegate protocol.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("\(pizzaToppings[component][row])")
    }

}
