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

class ViewController: UIViewController, UITextFieldDelegate, MFMailComposeViewControllerDelegate {
    
    //var emojiArray: [String] = []
    var emojiArray: String = ""
    //var textOnScreen = ""
    //    var textOnScreen = ""
    var textOnScreen = [String]()
    
    var emojiMap:Dictionary<String,String> = ["😀":"smile", "😁":"Smiling ahhh face", "😂":"laughing and crying", "😃": "happy face 2", "😄":"very happy", "😅":"happily shy", "😆" : "laughing with eyes closed","😉" : "wink", "😊" : "blushing", "😋" : "silly", "😎" : "cool", "😍" : "love", "😘" : "blowing a kiss", "😗" : "duck face", "😙" : "kissing", "😚" : "blush kissing", "☺️" : "grinning", "😇" : "angel", "😐" : "emotionless", "😑": "disappointed", "😶" : "mouthless", "😏" : "flirting", "😣" : "scared", "😥": "disappointed", "😮" : "shocked", "😯" : "surprised", "😪" : "crying", "😫" : "fed up", "😴" : "sleeping", "😌" : "pleased", "😛" : "tongue out", "😜" : "crazy", "😝" : "playful",  "😒" : "unimpressed", "😓" : "saddened", "😔" : "sorrow", "😕" : "confused", "😖" :"confounded", "😞" : "disappointed", "😟" : "worried", "😤" : "frustrated", "😢" : "teared up", "😭" : "sobbing", "😦" : "yawning", "😨" : "scared", "😩" : "weary", "😬" : "griming", "😰" : "concerned", "😱" : "screamed", "😳" : "embarrassed", "😵" : "dizzy", "😷" : "masked", "😡" : "very angry"]

  
    
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
        hideKeyboardWhenTappedAround()
        
        getText()
         compare()
        //textOnScreen.removeAll(keepCapacity: true)
        textOnScreen.append("The emojis means ")
        let temp = textOnScreen.joinWithSeparator(" ,")
        convertedtextisHERE.text = temp
       
        print("finshed")
    }
    
    
    
    @IBOutlet var convertedtextisHERE: UILabel!
    @IBOutlet internal var convertedToTextHere: UITextField!
    
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
    
    
    
    
    func getText() {
        emojiArray = textFeild.text!
        
        // textFeild.
    }
    var compareText:String = ""
    
    func compare() {
        //var test = emojiArray.componentsSeparatedByString(", ")
        var emojiArrayRight = emojiArray.characters.map { String($0) }
        var theEmoji: String
        
        for theEmoji in emojiArrayRight {
            textOnScreen.append(emojiMap[theEmoji]!)
        }
        
        print(textOnScreen)
    }
    
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
//switch emojiArrayRight { //emojiArray
//case "😀":
//    textOnScreen.append("Happy Face")
//    tempString = "hi"
//case "😬":
//    // textOnScreen = "Ahhhh..."
//    textOnScreen.append("Ahhhh...")
//case "😁":
//    textOnScreen.append("Smilling ahhh face")
//case "😂":
//    textOnScreen.append("Laughing so hard I am crying")
//case "😃":
//    textOnScreen.append(" happy face 2")
//default:
//    textOnScreen.append("er fuck")
//}

