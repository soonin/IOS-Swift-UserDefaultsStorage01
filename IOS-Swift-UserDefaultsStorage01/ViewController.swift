//
//  ViewController.swift
//  IOS-Swift-UserDefaultsStorage01
//
//  Created by Pooya on 2018-09-05.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func saveAct(_ sender: Any){
        let textFieldVal = textField.text
        UserDefaults.standard.set(textFieldVal, forKey: "textField")
    }

    @IBAction func loadAct(_ sender: Any){
        let textFieldLoadVal = UserDefaults.standard.string(forKey: "textField") ?? "No Saved Value"
        textField.text = textFieldLoadVal
    }

}

