//
//  ViewController.swift
//  Postcard
//
//  Created by Birch Browning on 3/12/15.
//  Copyright (c) 2015 Boomerworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
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
        // This is what happens when the "send mail" button is clicked.
        nameLabel.hidden = false
        messageLabel.hidden = false
        
        //moving the messages to the labels
        nameLabel.text = "Hi, " + enterNameTextField.text + "."
        messageLabel.text = enterMessageTextField.text
        
        //clean up
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}

