//
//  ViewController.swift
//  Postcard
//
//  Created by Mac on 11/25/14.
//  Copyright (c) 2014 Eduardo Furtado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTF: UITextField!
    @IBOutlet weak var enterMessageTF: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
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
        messageLabel.text = enterMessageTF.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTF.text = ""
        enterMessageTF.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

