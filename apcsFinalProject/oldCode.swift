////
////  oldCode.swift
////  apcsFinalProject
////
////  Created by Sam Showalter on 5/11/16.
////  Copyright © 2016 Sam Showalter. All rights reserved.
////
//
//import Foundation
//
//class oldCode {
////    for index in emojiArrayRight {
////    indexInt += 1
////    switch emojiArray { //emojiArray
////    case "😀":
////    textInScreenArray.append("HI")
////    //  textOnScreen
////    //                textInScreenArray.append("Happy Face")
////    case "😬":
////    // textOnScreen = "Ahhhh..."
////    textInScreenArray.append("Ahhhh...")
////    case "😁":
////    textOnScreen = "Smilling ahhh face"
////    case "😂":
////    textOnScreen = "Laughing so hard I am crying"
////    case "😃":
////    textOnScreen = " happy face 2"
////    case " hi":
////    textOnScreen = "hi"
////    //        case emojiArrayRight.:
////    //                textInScreenArray.append("hi")
////    default:
////    textOnScreen = "no input or Error"
////    }
////    }
////    func compareRecure() {
////        //var test = emojiArray.componentsSeparatedByString(", ")
////        //    let emojiArrayRight = emojiArray.characters.map { String($0) }
////        var indexInt = 0
////        // var textInScreenArray = [String]()
////        //        print("this is test")
////        //        print(emojiArrayRight)
////        
////        
////        switch emojiArray { //emojiArray
////        case "😀 ":
////            textOnScreen.append("Happy Face")
////            compare()
////        case "😀 ":
////            textOnScreen.append("Happy Face")
////            compare()
////        case "😬":
////            // textOnScreen = "Ahhhh..."
////            textOnScreen.append("Ahhhh...")
////            compare()
////        case "😁 ":
////            textOnScreen.append("Smilling ahhh face")
////        case "😂":
////            textOnScreen.append("Laughing so hard I am crying")
////        case "😃":
////            textOnScreen.append(" happy face 2")
////        default:
////            textOnScreen.append("er fuck")
////        }
////        
////        
////        print(textOnScreen)
////        //print(textInScreenArray)
////        
////        //         textOnScreen = textInScreenArray.joinWithSeparator("-r")
////        //var temp = textInScreenArray.joinWithSeparator(" ")
////        
////        //textOnScreen = temp
////        
////        
////        
////    }
//    //
//    //  ViewController.swift
//    //  apcsFinalProject
//    //
//    //  Created by ShowalterS18 on 5/4/16.
//    //  Copyright © 2016 Sam Showalter. All rights reserved.
//    //
//    import UIKit
//    //import FirebaseAnalytics
//    
//    
//    class ViewController: UIViewController, UITextFieldDelegate {
//        
//        //var emojiArray: [String] = []
//        var emojiArray: String = ""
//        //var textOnScreen = ""
//        //    var textOnScreen = ""
//        var textOnScreen = [String]()
//        
//        
//        @IBOutlet weak var bannerView: GADBannerView!
//        
//        @IBOutlet var textFeild: UITextField!
//        @IBAction func buttonTest(sender: AnyObject) {
//            getText()
//            var temp = textOnScreen.joinWithSeparator(" ")
//            convertedtextisHERE.text = temp
//            let emojiArrayRight = emojiArray.characters.map { String($0) }
//            //compare()
//            let hashTom = HashTable(size: 2)
//            hashTom.set("😀", value: "happy face")
//            hashTom
//            
//            if hashTom.containsKey(emojiArray) == true {
//                
//                var temp = hashTom.get(emojiArray)
//                print(temp)
//                // textOnScreen.append(temp)
//            }
//            
//            
//            //compareRecure()
//            print("finshed")
//        }
//        
//        
//        @IBOutlet var convertedtextisHERE: UILabel!
//        @IBOutlet internal var convertedToTextHere: UITextField!
//        
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            
//            // Do any additional setup after loading the view, typically from a nib.
//            convertedToTextHere.delegate = self
//            //hashTest()
//            // print("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
//            
//            
//        }
//        override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//            // Dispose of any resources that can be recreated.
//            print("Memory worning, FIX SAM")
//        }
//        
//        func hashTest(emjiThing: String) -> String {
//            var emojiArrayRight = emojiArray.characters.map { String($0) }
//            let hashT = HashTable(size: 9)
//            let hashTom = HashTable(size: 2)
//            
//            let names = ["anne", "andy", "andrew", "anna", "arny", "alex", "allen", "axel", "archie"]
//            hashTom.set("😀", value: "happy face")
//            //print("indexforhash test: ")
//            // print(hashTom.indexForHash(1))
//            if hashTom.containsKey(emojiArray) == true {
//                
//                var temp = hashTom.get(emojiArray)
//                print(temp)
//            }
//            
//            for name in names {
//                hashT.set(name, value: nil)
//            }
//            
//            
//            if let anna = hashT.remove("anna") {
//                print("we removed anna, lol")
//            }
//            if let anna2 = hashT.remove("anna") {
//                print("wow... got 2 of anna.. not good")
//            } else {
//                print("we couldn't get anna... next time")
//            }
//            //if let anne = hashT.get("anne") {
//            //  print("\(anne.key): \(anne.getHash())")
//            //}
//            if hashT.containsKey("alex") {
//                print("alex is in there")
//            }
//            
//            //if hashT.
//            hashT.remove("archie")
//            
//            hashT.resize()
//            return emjiThing
//        }
//        
//        
//        
//        
//        func getText() {
//            emojiArray = textFeild.text!
//            
//            // textFeild.
//        }
//        var compareText:String = ""
//        
//        func compare() {
//            //var test = emojiArray.componentsSeparatedByString(", ")
//            var emojiArrayRight = emojiArray.characters.map { String($0) }
//            var indexInt = 0
//            
//            var tempInt = -1
//            var tempString = ""
//            
//            var testArray: [String: Int]? = ["😀": 0, "😁": 1, "😂": 2]
//            
//            for indexInt in emojiArrayRight {
//                
//                tempInt += 1
//                switch emojiArray {
//                case "😀":
//                    textOnScreen.append("works")
//                    //break
//                    emojiArrayRight.removeAtIndex(tempInt)
//                    print("this temp int:   \(tempInt)")
//                    tempInt += 1
//                case "😁":
//                    textOnScreen.append("still world")
//                // break
//                case "😂":
//                    textOnScreen.append("there is hope")
//                    emojiArrayRight.removeAtIndex(tempInt)
//                    print("this temp int:   \(tempInt)")
//                default:
//                    print("this does not work, your fucked")
//                    print(tempInt)
//                }
//            }
//            
//            //        for index in emojiArrayRight {
//            //            indexInt += 1
//            //        switch emojiArrayRight { //emojiArray
//            //            case emojiArrayRight.:
//            //                textOnScreen.append("Happy Face")
//            //                tempString = "hi"
//            //            case "😬":
//            //               // textOnScreen = "Ahhhh..."
//            //                textOnScreen.append("Ahhhh...")
//            //            case "😁":
//            //                textOnScreen.append("Smilling ahhh face")
//            //            case "😂":
//            //                textOnScreen.append("Laughing so hard I am crying")
//            //            case "😃":
//            //                textOnScreen.append(" happy face 2")
//            //            default:
//            //                textOnScreen.append("er fuck")
//            //            }
//            //        }
//            
//            print(textOnScreen)
//            //  textOnScreen.removeAtIndex(indexInt)
//            //print(textInScreenArray)
//            
//            //         textOnScreen = textInScreenArray.joinWithSeparator("-r")
//            //var temp = textInScreenArray.joinWithSeparator(" ")
//            
//            //textOnScreen = temp
//            
//            
//            
//        }
//        
//        
//        
//    }
//    //switch emojiArrayRight { //emojiArray
//    //case "😀":
//    //    textOnScreen.append("Happy Face")
//    //    tempString = "hi"
//    //case "😬":
//    //    // textOnScreen = "Ahhhh..."
//    //    textOnScreen.append("Ahhhh...")
//    //case "😁":
//    //    textOnScreen.append("Smilling ahhh face")
//    //case "😂":
//    //    textOnScreen.append("Laughing so hard I am crying")
//    //case "😃":
//    //    textOnScreen.append(" happy face 2")
//    //default:
//    //    textOnScreen.append("er fuck")
//    //}
//    
//
//}
  // var emojiMap:Dictionary<String,String> = ["😀":"smile", "😁":"Smiling ahhh face", "😂":"laughing and crying", "😃": "happy face 2", "😄":"very happy", "😅":"happily shy", "😆" : "laughing with eyes closed","😉" : "wink", "😊" : "blushing", "😋" : "silly", "😎" : "cool", "😍" : "love", "😘" : "blowing a kiss", "😗" : "duck face", "😙" : "kissing", "😚" : "blush kissing", "☺️" : "grinning", "😇" : "angel", "😐" : "emotionless", "😑": "disappointed", "😶" : "mouthless", "😏" : "flirting", "😣" : "scared", "😥": "disappointed", "😮" : "shocked", "😯" : "surprised", "😪" : "crying", "😫" : "fed up", "😴" : "sleeping", "😌" : "pleased", "😛" : "tongue out", "😜" : "crazy", "😝" : "playful",  "😒" : "unimpressed", "😓" : "saddened", "😔" : "sorrow", "😕" : "confused", "😖" :"confounded", "😞" : "disappointed", "😟" : "worried", "😤" : "frustrated", "😢" : "teared up", "😭" : "sobbing", "😦" : "yawning", "😨" : "scared", "😩" : "weary", "😬" : "griming", "😰" : "concerned", "😱" : "screamed", "😳" : "embarrassed", "😵" : "dizzy", "😷" : "masked", "😡" : "very angry"]+