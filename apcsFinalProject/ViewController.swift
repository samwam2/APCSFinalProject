//
//  ViewController.swift
//  apcsFinalProject
//
//  Created by ShowalterS18 on 5/4/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //var emojiArray: [String] = []
    var emojiArray: String = ""
    //var textOnScreen = ""
    var textOnScreen = ""
    let string = "hi"
    
    
    

    @IBOutlet var textFeild: UITextField!
    @IBAction func buttonTest(sender: AnyObject) {
        getText()
        print(emojiArray)
        print("finshed")
        convertedtextisHERE.text = textOnScreen
        compare()
    }
    
    
    @IBOutlet var convertedtextisHERE: UILabel!
     @IBOutlet internal var convertedToTextHere: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      convertedToTextHere.delegate = self
       // var testArray = Array(emojiArray.testArray)
        var emojiArrayRight = emojiArray.characters.map { String($0) }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Memory worning, FIX SAM")
    }
    
    
    
  
    func getText() {
        emojiArray = textFeild.text!
        
       // textFeild.
    }
    var compareText:String = ""
    
    func compare() {
        var test = emojiArray.componentsSeparatedByString(", ")
        let emojiArrayRight = emojiArray.characters.map { String($0) }
        var indexInt = 0
        var textInScreenArray = [String]()
//        print("this is test")
//        print(emojiArrayRight)
        
        for index in emojiArrayRight {
            indexInt++
        switch emojiArray { //emojiArray
            case "😀":
                textOnScreen = "Happy Face"
            textInScreenArray.append("Happy Face")
            case "😬":
                textOnScreen = "Ahhhh..."
            textInScreenArray.append("Ahhhh...")
            case "😁":
                textOnScreen = "Smilling ahhh face"
            case "😂":
                textOnScreen = "Laughing so hard I amd crying"
            case "😃":
                textOnScreen = " happy face 2"
            case " hi":
                textOnScreen = "hi"
            default:
                textOnScreen = "no input or Error"
            }
        }
        
         textOnScreen = textInScreenArray.joinWithSeparator("-")
        print(textOnScreen)
        
       
    }

}

