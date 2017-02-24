//
//  ViewController.swift
//  MiraclePill
//
//  Created by William Kurniawan on 24/2/17.
//  Copyright © 2017 William Kurniawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTF: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var stateBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTF: UITextField!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successIndicator: UIImageView!
    
    let states = ["New South Wales", "Queensland", "South Australia", "Tasmania", "Victoria", "Western Australia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.delegate = self
        statePicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTF.isHidden = true
        zipLabel.isHidden = true
        zipTF.isHidden = true
    }

    @IBAction func buyBtnPressed(_ sender: Any) {
        logo.isHidden = true
        titleLabel.isHidden = true
        priceLabel.isHidden = true
        divider.isHidden = true
        fullNameLabel.isHidden = true
        fullNameTF.isHidden = true
        streetLabel.isHidden = true
        streetTF.isHidden = true
        cityLabel.isHidden = true
        cityTF.isHidden = true
        stateLabel.isHidden = true
        stateBtn.isHidden = true
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryTF.isHidden = true
        zipLabel.isHidden = true
        zipTF.isHidden = true
        buyBtn.isHidden = true
        successIndicator.isHidden = false
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
        stateBtn.setTitle(states[row], for: .normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTF.isHidden = false
        zipLabel.isHidden = false
        zipTF.isHidden = false
    }
    
}

