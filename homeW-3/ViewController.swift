//
//  ViewController.swift
//  homeW-3
//
//  Created by Nurjamal Mirbaizaeva on 16/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    if textField.text?.isEmpty ?? true{
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.red.cgColor
        return false
    }else{
        textField.layer.borderWidth = 0
        return true
    }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

