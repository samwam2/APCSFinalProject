//
//  ViewController.swift
//  apcsFinalProject
//
//  Created by ShowalterS18 on 5/4/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var emojiArray: [String] = []
    var emojiArray: String = ""
    

    @IBOutlet var textFeild: UITextField!
    @IBAction func TestButton(sender: AnyObject) {
        
        getText()
        printcharterBycharter()
        //print(emojiArray)
        print("finshed")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func printcharterBycharter() {
        
        var i = 0
        
        for _ in 1...5 {
            i++
            print(emojiArray.startIndex)
            print(emojiArray)
            print(i)
        }
    }
    
    func getText() {
        emojiArray = textFeild.text!
    }

}

