//
//  ViewController.swift
//  Postcard
//
//  Created by Birch Browning on 3/12/15.
//  Copyright (c) 2015 Boomerworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment to test git.
        messageLabel.hidden = false
        messageLabel.text = "Hi, " + enterNameTextField.text + ". \n" + enterMessageTextField.text
        //messageLabel.textColor = UIColor.redColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}

