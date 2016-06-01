//
//  settingsPage.swift
//  apcsFinalProject
//
//  Created by Sam Showalter on 5/30/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//

import Foundation
import UIKit
import MessageUI
import Mixpanel

class settingsPage: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    let mixpanel = Mixpanel.sharedInstanceWithToken("d3452a9136dba1a16db29ebf8af389b8")

    //Method to have the user send a bug report

    @IBAction func reportABug(sender: AnyObject) {
        mixpanel.track("User Opened send bug report")
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["sam@samshowalter.tech"])
            mail.setMessageBody("<p>Please insert the bug in the area below:            </p>", isHTML: true)
            mail.setSubject("iOS App Bug Report")
            mixpanel.track("User sent bug report")
            presentViewController(mail, animated: true, completion: nil)
        } else {
            // show failure alert
            print("Fail on email fix")
        }
        
    }
    
    //Opens the facebook page for the app.

    @IBAction func likeFacebookPage(sender: AnyObject) {
        mixpanel.track("User went to facebook page")
        if let url = NSURL(string: "http://www.facebook.com/transmoji") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    //Basic overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //convertedToTextHere.delegate = self
        self.hideKeyboardWhenTappedAround()
        mixpanel.track("User opened info page")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Memory warning, FIX SAM")
    }
    //Helper method to have the user send a bug report
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}