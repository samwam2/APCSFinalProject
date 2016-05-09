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
    

    @IBOutlet var textFeild: UITextField!
    @IBAction func buttonTest(sender: AnyObject) {
        getText()
        print(emojiArray)
     
        
        print("finshed")
        
    }
    
     @IBOutlet internal var convertedToTextHere: UITextField!
    
//    var text: String = ""
//    func putText(text: String) -> String {
//        var place = text
//        place = convertedToTextHere.placeholder!
//        
//        return text
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      convertedToTextHere.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    func getText() {
        emojiArray = textFeild.text!
    }

}

