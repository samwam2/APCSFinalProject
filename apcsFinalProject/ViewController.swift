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
//    var textOnScreen = ""
    var textOnScreen = [String]()
    
    

    @IBOutlet var textFeild: UITextField!
    @IBAction func buttonTest(sender: AnyObject) {
        getText()
        var temp = textOnScreen.joinWithSeparator(" ")
        convertedtextisHERE.text = temp
        let emojiArrayRight = emojiArray.characters.map { String($0) }
        compare()
        //compareRecure()
        print("finshed")
    }
    
    
    @IBOutlet var convertedtextisHERE: UILabel!
     @IBOutlet internal var convertedToTextHere: UITextField!
    
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
    
    
    
  
    func getText() {
        emojiArray = textFeild.text!
        
       // textFeild.
    }
    var compareText:String = ""
    
    func compare() {
        //var test = emojiArray.componentsSeparatedByString(", ")
        let emojiArrayRight = emojiArray.characters.map { String($0) }
        var indexInt = 0
       // var textInScreenArray = [String]()
//        print("this is test")
//        print(emojiArrayRight)
        var tempString = ""
        
        for index in emojiArrayRight {
            indexInt += 1
        switch emojiArrayRight { //emojiArray
            case ["😀"]:
                textOnScreen.append("Happy Face")
                tempString = "hi"
            case "😬":
               // textOnScreen = "Ahhhh..."
                textOnScreen.append("Ahhhh...")
            case "😁":
                textOnScreen.append("Smilling ahhh face")
            case "😂":
                textOnScreen.append("Laughing so hard I am crying")
            case "😃":
                textOnScreen.append(" happy face 2")
            default:
                textOnScreen.append("er fuck")
            }
        }
        
        print(textOnScreen)
        //print(textInScreenArray)

//         textOnScreen = textInScreenArray.joinWithSeparator("-r")
        //var temp = textInScreenArray.joinWithSeparator(" ")
      
        //textOnScreen = temp
     
        
       
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

