//
//  LiquidViewController.swift
//  Quantity
//
//  Created by Panchami Shenoy on 11/10/21.
//

import UIKit

class LiquidViewController: UIViewController {

    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "LIQUID"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        if textField1.text != ""{
            let weightInLiter = Double(textField1.text!)
            let weightInMilli = weightInLiter!*1000
            textField2.text = String(weightInMilli)
            textField1.text = ""
            return
        }
        if textField2.text != ""{
            let weightInMilli = Double(textField2.text!)
            let weightInLiter = weightInMilli!/1000
            textField1.text = String(weightInLiter)
            textField2.text = ""
            return
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
