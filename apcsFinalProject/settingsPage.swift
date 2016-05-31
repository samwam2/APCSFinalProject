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

class settingsPage: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    
    
    @IBAction func reportABug(sender: AnyObject) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["sam@samshowalter.tech"])
            mail.setMessageBody("<p>Please insert the bug in the area below:            </p>", isHTML: true)
            mail.setSubject("iOS App Bug Report")
            
            presentViewController(mail, animated: true, completion: nil)
        } else {
            // show failure alert
            print("Fail on email fix")
        }
        
    }
    
    
    @IBAction func likeFacebookPage(sender: AnyObject) {
        if let url = NSURL(string: "http://www.facebook.com/transmoji") {
            UIApplication.sharedApplication().openURL(url)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //convertedToTextHere.delegate = self
        self.hideKeyboardWhenTappedAround()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Memory warning, FIX SAM")
    }
    
    
    
}