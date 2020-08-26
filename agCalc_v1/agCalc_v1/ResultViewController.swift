//
//  ResultViewController.swift
//  agCalc_v1
//
//  Created by Rodrigo Canalizo Macías on 25/08/20.
//  Copyright © 2020 Rodrigo Canalizo Macías. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UITextFieldDelegate {
    
    //Outlets:
    @IBOutlet weak var alloyLabel: UILabel!
    @IBOutlet weak var grLabel: UILabel!
    
    //Reciving Data from ViewController:
    var grNewString = String()
    var finenessString = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //converting (string to float):
        let grams : Float? = Float(grNewString)
        let fineness : Float? = Float(finenessString)
        
        //Equations:
        let percent = (fineness!*10)/100
        let netW = (percent*grams!)/100
        let alloy = grams! - netW
        
        //Converting (Float to string):
        let finalW : String = String(format: "%.2f", netW)
        let finalAlloy : String = String(format: "%.2f", alloy)
        
        // Changing Result Labels:
        grLabel.text = finalW
        alloyLabel.text = finalAlloy
    }
}
