//
//  TextViewController.swift
//  EmergencyCaller
//
//  Created by Dylan Trachsel on 9/17/16.
//  Copyright © 2016 Dylan And Matt. All rights reserved.
//

import Foundation
import UIKit

class TextViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: IBAction functions
    @IBAction func nextPressed(sender: UIButton) {
        performSegueWithIdentifier("textSendSegue", sender: self)
    }
}
