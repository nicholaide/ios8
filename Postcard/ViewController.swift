//
//  ViewController.swift
//  Postcard
//
//  Created by Nicholai de Guzman on 12/29/14.
//  Copyright (c) 2014 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //ui elem stor  cariable name    type !optionals
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text=""
    }
}

