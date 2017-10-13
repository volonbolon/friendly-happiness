//
//  ViewController.swift
//  ReadName
//
//  Created by Ariel Rodriguez on 10/13/17.
//  Copyright © 2017 Volonbolon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let localizedString = NSLocalizedString("Hello, %@!", comment: "Greetings")
        let formattedString = String.localizedStringWithFormat(localizedString, textField.text!)
        self.label.text = formattedString
        return true
    }
}

