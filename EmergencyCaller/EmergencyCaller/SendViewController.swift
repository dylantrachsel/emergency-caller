//
//  SendViewController.swift
//  EmergencyCaller
//
//  Created by Dylan Trachsel on 9/25/16.
//  Copyright © 2016 Dylan And Matt. All rights reserved.
//

import Foundation
import UIKit

class SendViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var sendButton: UIButton!
    var textMessage: String?
    var fileName: String?
    var isText: Bool = false
    var isCall: Bool = false
    
    // MARK: IBAction functions
    @IBAction func sendPressed(sender: UIButton) {
    }
}

