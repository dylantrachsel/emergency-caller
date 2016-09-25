//
//  ViewController.swift
//  EmergencyCaller
//
//  Created by Dylan Trachsel on 8/11/16.
//  Copyright © 2016 Dylan And Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var textButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: IBAction Methods
    @IBAction func callPressed(sender: UIButton) {
        ServerInterface.callRequest()
        
        self.performSegueWithIdentifier("CallSegue", sender: self)
    }
    
    @IBAction func textPressed(sender: UIButton) {
        ServerInterface.textRequest()
        
        self.performSegueWithIdentifier("TextSegue", sender: self)
    }
}

