//
//  ViewController.swift
//  Postcaerd 2
//
//  Created by David Frattura on 12/21/14.
//  Copyright (c) 2014 David Frattura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var EnterMessageTextField: UITextField!
    
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

        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)        
    }

}

