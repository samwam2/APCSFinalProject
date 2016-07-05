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
    
    //Vars used
    var emojiArray: String = ""
    var textOnScreen = [String]()
    var temp1 = "hi"
    let mixpanel = Mixpanel.sharedInstanceWithToken("d3452a9136dba1a16db29ebf8af389b8")
    
    //Text feild for the users input
    @IBOutlet var textFeild: UITextField!
    
    //Button to start the Translation
    @IBAction func buttonTest(sender: AnyObject) { doTranslation() }
    
    //Func that passes the users input to the toText class and puts the values on the screen.
    func doTranslation() {
        //If statment used so the response is cleared before it gets used to again and response dont stack up
        if textOnScreen.isEmpty == true {
            //textOnScreen.insert("Translation:", atIndex: 0)
        } else {
            textOnScreen.removeAll()
        }
        getText()
        var classThing = toText(emojiArrayTemp: emojiArray)
        var test = toText.init(emojiArrayTemp: emojiArray)
        var temp: String = classThing.getTextOnScreen(temp1)
        convertedtextisHERE.text = temp
        print("finshed")
        //Should hide the keybord
        view.endEditing(true)
        mixpanel.track("User Translated Emojis")
    }
    
    //Where the emojis values go
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
    
    //Hides the keyboard and starts the Translation when the user presses the return key.
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        self.view.endEditing(true)
        doTranslation()
        return false
    }
    
    
    //Assigns the emojiArray to the textField that the user entered
    func getText() { emojiArray = textFeild.text! }
    
} //Closing braket for the class
//Hides the keyboard when the user taps out of it.
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}


