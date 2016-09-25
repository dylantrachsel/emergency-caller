//
//  CallViewController.swift
//  EmergencyCaller
//
//  Created by Dylan Trachsel on 9/17/16.
//  Copyright © 2016 Dylan And Matt. All rights reserved.
//

import UIKit
import AVFoundation

class CallViewController: UIViewController, AVAudioRecorderDelegate {
    var audioRecorder:AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction functions
    @IBAction func recordPressed(sender: AnyObject) {
        
        //init
        let audioSession:AVAudioSession = AVAudioSession.sharedInstance()
        
        //ask for permission
        if (audioSession.respondsToSelector("requestRecordPermission:")) {
            AVAudioSession.sharedInstance().requestRecordPermission({(granted: Bool)-> Void in
                if granted {
                    print("granted")
                    
                    //set category and activate recorder session
                    try! audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
                    try! audioSession.setActive(true)
                    
                    
                    //get documnets directory
                    let documentsDirectory = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
                    
                    let fullPath = (documentsDirectory as NSString).stringByAppendingPathComponent("voiceRecording.caf")
                    let url = NSURL.fileURLWithPath(fullPath)
                    
                    //create AnyObject of settings
                    let settings: [String : AnyObject] = [
                        AVFormatIDKey:Int(kAudioFormatAppleIMA4), //Int required in Swift2
                        AVSampleRateKey:44100.0,
                        AVNumberOfChannelsKey:2,
                        AVEncoderBitRateKey:12800,
                        AVLinearPCMBitDepthKey:16,
                        AVEncoderAudioQualityKey:AVAudioQuality.Max.rawValue
                    ]
                    
                    //record
                    try! self.audioRecorder = AVAudioRecorder(URL: url, settings: settings)
                    self.audioRecorder.record()
                    
                } else{
                    print("not granted")
                }
            })
        }
    }
    
    @IBAction func stopPressed(sender: AnyObject) {
        self.audioRecorder.stop()
    }
    
    @IBAction func nextPressed(sender: UIButton) {
        performSegueWithIdentifier("callSendSegue", sender: self)
    }
    
    
    // MARK: Custom Functions

}
