//
//  ViewController.swift
//  apcsFinalProject
//
//  Created by ShowalterS18 on 5/4/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//
import UIKit
//import FirebaseAnalytics


class ViewController: UIViewController, UITextFieldDelegate {
    
    //All vars
    //var emojiArray: [String] = []
    var emojiArray: String = ""
    var compareText:String = ""
    var textOnScreen = [String]()
    
    
    //Geters
     func getText() { emojiArray = textFeild.text! }

    @IBOutlet var textFeild: UITextField!
    @IBAction func buttonTest(sender: AnyObject) {
        getText()
        var temp = textOnScreen.joinWithSeparator(" ")
        convertedtextisHERE.text = temp
        let emojiArrayRight = emojiArray.characters.map { String($0) }
        
        //compareRecure()
        print("finshed")
    }
    
    //IBOutlet for the
    @IBOutlet var convertedtextisHERE: UILabel!
     
    
    //All overides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      convertedToTextHere.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Memory worning, FIX SAM")
    }
 
    //func that compare the user input to a hashtable and returns the vale of the key
    //The user input is the key
    func compare() {
        //var test = emojiArray.componentsSeparatedByString(", ")
        var emojiArrayRight = emojiArray.characters.map { String($0) }
   
        
        var testArray: [String: Int]? = ["😀": 0, "😁": 1, "😂": 2]
        
        print(textOnScreen)
 
    }
    
  

}
//for indexInt in emojiArrayRight {
//    
//    tempInt += 1
//    switch emojiArray {
//    case "😀":
//        textOnScreen.append("works")
//        //break
//        emojiArrayRight.removeAtIndex(tempInt)
//        print("this temp int:   \(tempInt)")
//        tempInt += 1
//    case "😁":
//        textOnScreen.append("still world")
//    // break
//    case "😂":
//        textOnScreen.append("there is hope")
//        emojiArrayRight.removeAtIndex(tempInt)
//        print("this temp int:   \(tempInt)")
//    default:
//        print("this does not work, your fucked")
//        print(tempInt)
//    }
//}
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

