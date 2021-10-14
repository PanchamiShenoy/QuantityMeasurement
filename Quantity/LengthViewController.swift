//
//  LengthViewController.swift
//  Quantity
//
//  Created by Panchami Shenoy on 10/10/21.
//

import UIKit

class LengthViewController: UIViewController {

    @IBOutlet var textField2: UITextField!
    @IBOutlet var textField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "LENGTH"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        if textField1.text != ""{
            let lengthInMeter = Double(textField1.text!)
            let lengthInCentimeter = lengthInMeter!*100
            textField2.text = String(lengthInCentimeter)
            textField1.text = ""
            return
        }
        if textField2.text != ""{
            let lengthInCentimeter = Double(textField2.text!)
            let lengthInMeter = lengthInCentimeter!/100
            textField1.text = String(lengthInMeter)
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
