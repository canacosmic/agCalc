//
//  ViewController.swift
//  agCalc_v1
//
//  Created by Rodrigo Canalizo Macías on 25/08/20.
//  Copyright © 2020 Rodrigo Canalizo Macías. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Outlets:
    @IBOutlet weak var grTextField: UITextField!
    @IBOutlet weak var finenessTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.grTextField.delegate = self
        self.finenessTextField.delegate = self
    }
    
    // Bouton action & segue:
    @IBAction func buttonAction(_ sender: UIButton) {
        if (grTextField.text != ""), (finenessTextField.text != ""){
            performSegue(withIdentifier: "segue", sender: self)
        }else {sender.shake()
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.error)
        }
    }
    
    //Sending input data to ResutViewController:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultController = segue.destination as! ResultViewController
        
        resultController.grNewString = grTextField.text!
        resultController.finenessString = finenessTextField.text!
    }
    
    // Hide Keyboard when user touches outside:
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
