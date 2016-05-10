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
    var textOnScreen = ""
    

    @IBOutlet var textFeild: UITextField!
    @IBAction func buttonTest(sender: AnyObject) {
        getText()
        print(emojiArray)
        print("finshed")
    //getText.()
        convertedtextisHERE.text = textOnScreen
        compare()
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
        
      //emojiArray.startIndex

      //  var indexInt: int = 0
//        while emojiArray.isEmpty == false {
//            
//        }
        
        switch emojiArray {
    case "😀":
        textOnScreen = "Happy Face"
    case "😬":
            textOnScreen = "Ahhhh..."
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

}

