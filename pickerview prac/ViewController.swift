//
//  ViewController.swift
//  pickerview prac
//
//  Created by COE-05 on 12/12/19.
//  Copyright © 2019 COE-05. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
   
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var name: UILabel!
    @IBAction func tdy(_ sender: UIDatePicker) {
        
        let datef = DateFormatter()
        datef.dateFormat = "yy/MM/dd"
        date.text = datef.string(from: sender.date)
    }
   
    
    
    var pr = ["INDIA","CHINA","USA"]
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        name.text = pr[row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

