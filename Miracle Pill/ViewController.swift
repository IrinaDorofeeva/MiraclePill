//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Mac on 5/3/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    
    
    
    @IBOutlet var buyerInfoTextFields: [UITextField]!
    
    
    @IBOutlet weak var chooseStateTextField: UITextField!
    
    @IBAction func buyNowButton(_ sender: Any) {
         }
    
    let states = ["Alaska","Arkansas", "Alabama","California","Maine","New York"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statePicker = UIPickerView()
         statePicker.dataSource = self
         statePicker.delegate = self
        
         chooseStateTextField.delegate=self
         chooseStateTextField.inputView=statePicker;
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chooseStateTextField.text = states[row]
        self.view.endEditing(false)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        
        textField.resignFirstResponder()
        return true
    }
    
   

}

