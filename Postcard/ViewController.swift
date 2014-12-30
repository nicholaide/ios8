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
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!  //challenge
    
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
        nameLabel.hidden = false //challenge
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text //challenge
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor() //challenge
        enterMessageTextField.text = ""
        enterNameTextField.text = "" //challenge
        //make the keyboard go away
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

