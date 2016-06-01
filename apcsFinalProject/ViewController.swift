//
//  ViewController.swift
//  apcsFinalProject
//
//  Created by ShowalterS18 on 5/4/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//
import Foundation
import UIKit
import MessageUI
import Mixpanel

class ViewController: UIViewController, UITextFieldDelegate, MFMailComposeViewControllerDelegate {
    
    
    var emojiArray: String = ""
    var textOnScreen = [String]()
    let mixpanel = Mixpanel.sharedInstanceWithToken("d3452a9136dba1a16db29ebf8af389b8")
    
    
    @IBAction func crashButton(sender: AnyObject) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["samwam2@gmail.com"])
            mail.setMessageBody("<p>Please insert the emoji you tried to translate along with your definition for it below:     </p>", isHTML: true)
            mail.setSubject("iOS App Chrash")
            
            presentViewController(mail, animated: true, completion: nil)
        } else {
            // show failure alert
            print("Fail on email fix")
        }

    }
    @IBOutlet var textFeild: UITextField!
    @IBAction func buttonTest(sender: AnyObject) {
        doTranslation()
//        if textOnScreen.isEmpty == true {
//            //textOnScreen.insert("Translation:", atIndex: 0)
//        } else {
//            textOnScreen.removeAll()
//        }
//        
//        getText()
//        var classThing = toText(emojiArrayTemp: emojiArray)
//        var test = toText.init(emojiArrayTemp: emojiArray)
//        var temp1 = "hi"
//        var temp: String = classThing.getTextOnScreen(temp1)
//      
//        convertedtextisHERE.text = temp
//        print("finshed")
//        mixpanel.track("User Translated Emojis")
        
    }
    
    func doTranslation() {
        if textOnScreen.isEmpty == true {
            //textOnScreen.insert("Translation:", atIndex: 0)
        } else {
            textOnScreen.removeAll()
        }
        
        getText()
        var classThing = toText(emojiArrayTemp: emojiArray)
        var test = toText.init(emojiArrayTemp: emojiArray)
        var temp1 = "hi"
        var temp: String = classThing.getTextOnScreen(temp1)
        
        convertedtextisHERE.text = temp
        print("finshed")
        mixpanel.track("User Translated Emojis")
    }
    
    @IBOutlet var convertedtextisHERE: UILabel!
    

    //All overrides for basic stuff
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround()
        self.textFeild.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Memory warning, FIX SAM")
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        self.view.endEditing(true)
        return false
    }
    
    
    
    func getText() { emojiArray = textFeild.text! }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}


