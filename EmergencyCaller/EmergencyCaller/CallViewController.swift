//
//  CallViewController.swift
//  EmergencyCaller
//
//  Created by Dylan Trachsel on 9/17/16.
//  Copyright © 2016 Dylan And Matt. All rights reserved.
//

import UIKit
import AVFoundation

class CallViewController: UIViewController {

    @IBOutlet weak var fileTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction functions
    @IBAction func nextPressed(sender: UIButton) {
        performSegueWithIdentifier("callSendSegue", sender: self)
    }
    
    // MARK: Segue functions
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        var svc = segue!.destinationViewController as! SendViewController;
        
        svc.fileName = fileTextField.text
        svc.isCall = true
    }
    
    
    // MARK: Custom Functions

}
