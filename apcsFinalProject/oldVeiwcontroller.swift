////
////  ViewController.swift
////  apcsFinalProject
////
////  Created by ShowalterS18 on 5/4/16.
////  Copyright © 2016 Sam Showalter. All rights reserved.
////
//import Foundation
//import UIKit
//import MessageUI
//import Mixpanel
////old copy of the main ViewController that worked
//
//class ViewControllerOld: UIViewController, UITextFieldDelegate, MFMailComposeViewControllerDelegate {
//    
//    
//    var emojiArray: String = ""
//    var textOnScreen = [String]()
//    let mixpanel = Mixpanel.sharedInstanceWithToken("d3452a9136dba1a16db29ebf8af389b8")
//    
//    
//    
//    //"😆" : "laughing with eyes closed"
//    
//    var emojiMap:Dictionary<String,String> = ["😀" : "Happy Face", "😬" : "Ahhhh…", "😁" : "Smiling ahhh face", "😂" : "laughing and crying", "😃" : "happy face 2", "😄" : "very happy", "😅" : "happily shy", "😉" : "wink", "😊" : "blushing", "😋" : "silly",  "😎" : "cool", "😍" : "love", "😘" : "blowing a kiss", "😗" : "duck face", "😚" : "blush kissing", "☺️" : "grinning", "😇" : "angelic", "😐" : "emotionless", "😑": "disappointed", "😶" : "mouthless","😏" : "flirting", "😣" : "scared", "😥" : "disappointed", "😮" : "shocked","😯" : "surprised", "😪" : "crying", "😫" : "fed up", "😴" : "sleeping", "😌" : "pleased", "😛" : "tongue out","😜" : "crazy", "😝" : "playful", "😒" : "unimpressed", "😓" : "saddened", "😔" : "sorrow", "😕" : "confused", "😖" : "confounded", "😞" : "disappointed", "😟" : "worried", "😤" : "frustrated", "😢" : "teared up", "😭" : "sobbing", "😦" : "yawning", "😨" : "scared", "😩" : "weary", "😰" : " concerned", "😱" : "screamed", "😳" : "embarrassed", "😵" : "dizzy", "😷" : "masked", "😡" : "very angry", "😠" : "angry", "🤑" : "stupid rich", "🤓" : "nerdy", "🤗" : "hugging", "🙄" : "rolling eyes", "🤔" : "thinking", "🤕" : "injured", "🤒" : "sick", "🤐" : "silenced", "😲" : "dead", "🙃" : "upside down", "☹️" : "frown", "🙁" : "perplexed", "😧" : "sad and surprised", "💩" : "poop", "😈" : "purple devil", "👿" : "angry purple devil", "👹" : "mask", "👺" : "angry mask", "💀" : "skull", "👻" : "ghost", "👽" : "alien", "🤖" : "robot", "😺" : "happy cat", "😸" : "delighted cat", "😹" : "crying laughing cat", "😻" : "cat in love", "😼" : "smirking cat", "😽" : "kissy cat", "🙀" : "spooked cat", "😿" : "crying cat", "😾" : "angry cat", "🙌" : "hands up", "👏" : "clapping", "👋" : "waving", "👍" : "thumbs up", "👎" : "thumbs down", "👊" : "fist", "✊" : "fist up", "✌️" : "peace", "👌" : "ok", "✋" : "palm", "👐" : "flying hands", "💪" : "muscle arm", "🙏" : "pray", "☝️" : "point up", "👆" : "point up back hand", "👇" : "point down", "👈" : "point left", "👉" : "point right", "🖕" : "middle finger", "🖐" : "open hand", "🤘" : "rock out", "🖖" : "vulcan salute ", "✍️" : "writing", "💅" : "painting nails", "👄" : "lips", "👅" : "tongue", "👂" : "ear", "👃" : "nose", "👁" : "eye", "👀" : "eyes", "👤" : "shadow", "👥" : "two shadows", "🗣" : "yelling shadow", "👶" : "baby", "👦" : "young boy", "👧" : "young girl", "👨" : "teen boy", "👩" : "teen girl", "👱" : "young adult", "👴" : "old man", "👵" : "old woman", "👲" : "hat guy", "👳" : "turban guy", "👮" : "police man", "👷" : "EMT", "💂" : "bearskin guy", "🕵" : "detective", "🎅" : "santa", "👼" : "angel", "👸" : "princess", "👰" : "guardian angel", "🚶" : "walking", "🏃" : "running", "💃" : "dancing", "👯" : "ballerinas", "👫" : "couple", "👬" : "gay couple", "👭" : "lesbian couple", "🙇" : "thinking boy", "💁" : "sassy woman", "🙅" : "no good", "🙋" : "woman raising hand", "🙎" : "pouting woman", "🙍" : "frowning woman", "💇" : "haircut", "💆" : "face massage", "💑" : "loving couple", "👩‍❤️‍👩" : "loving lesbian couple", "👨‍❤️‍👨" : "loving gay couple", "💏" : "kissing couple", "👩‍❤️‍💋‍👩" : "kissing lesbian couple", "👨‍❤️‍💋‍👨" : "kissing gay couple", "👪" : "family of three with a boy", "👨‍👩‍👧" : "family of three with a girl", "👨‍👩‍👧‍👦" : "family of four with a girl and a boy", "👨‍👩‍👧‍👧": "family of four with two girls", "👨‍👩‍👦‍👦" : "family of four with two boys", "👩‍👩‍👦" : "lesbian couple with a boy", "👩‍👩‍👧" : "lesbian couple with a girl", "👩‍👩‍👧‍👦" : "lesbian couple with a boy and a girl", "👩‍👩‍👦‍👦" : "lesbian couple with two boys", "👩‍👩‍👧‍👧" : "lesbian couple with two girls", "👨‍👨‍👦" : "gay couple with a boy", "👨‍👨‍👧" : "gay couple with a girl", "👨‍👨‍👧‍👦" : "gay couple with a boy and a girl", "👨‍👨‍👦‍👦" : "gay couple with two boys", "👨‍👨‍👧‍👧" : "gay couple with two girls", "👚" : "woman's shirt",  "👕" : "men's shirt", "👔" : "dress shirt", "👗" : "skirt", "👙" : "bikini", "👘" : "kimono", "💄" : "lipstick", "💋" : "lipstick lips", "👣" : "feet", "👠" : "heels", "👡" : "sandals", "👢" : "woman's boot", "👞" : "man’s shoe", "👟" : "tennis shoes", "👒" : "woman’s hat", "🎩" : "dress hat", "⛑" : "rescue helmet", "🎓" : "academic hat", "👑" : "crown", "🎒" : "backpack", "👝" : "clutch", "👛" : "purse", "👜" : "handbag", "💼" : "brief case", "👓" : "glasses", "🕶" : "sunglasses", "🌂" : "umbrella"] //"😀": "happy"]
//    
//    @IBAction func crashButton(sender: AnyObject) {
//        if MFMailComposeViewController.canSendMail() {
//            let mail = MFMailComposeViewController()
//            mail.mailComposeDelegate = self
//            mail.setToRecipients(["samwam2@gmail.com"])
//            mail.setMessageBody("<p>Please insert the emoji you tried to translate along with your definition for it below:     </p>", isHTML: true)
//            mail.setSubject("iOS App Chrash")
//            
//            presentViewController(mail, animated: true, completion: nil)
//        } else {
//            // show failure alert
//            print("Fail on email fix")
//        }
//        
//    }
//    @IBOutlet var textFeild: UITextField!
//    @IBAction func buttonTest(sender: AnyObject) {
//        if textOnScreen.isEmpty == true {
//            //textOnScreen.insert("Translation:", atIndex: 0)
//        } else {
//            textOnScreen.removeAll()
//        }
//        getText()
//        compare()
//        
//        let temp = textOnScreen.joinWithSeparator(" ,")
//        convertedtextisHERE.text = temp
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
//        view.addGestureRecognizer(tap)
//        print("finshed")
//        mixpanel.track("User Translated Emojis")
//        textFieldShouldReturn(textFeild)
//    }
//    
//    @IBOutlet var convertedtextisHERE: UILabel!
//    @IBOutlet internal var convertedToTextHere: UITextField!
//    
//    //All overrides for basic stuff
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        //convertedToTextHere.delegate = self
//        self.hideKeyboardWhenTappedAround()
//        
//    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//        print("Memory warning, FIX SAM")
//    }
//    
//    func textFieldShouldReturn(textField: UITextField!) -> Bool {
//        // called when 'return' key pressed. return NO to ignore.
//        textFeild.resignFirstResponder()
//        return true;
//    }
//    
//    
//    
//    func getText() { emojiArray = textFeild.text! }
//    
//    func compare() {
//        //var test = emojiArray.componentsSeparatedByString(", ")
//        var emojiArrayRight = emojiArray.characters.map { String($0) }
//        var theEmoji: String
//        
//        for theEmoji in emojiArrayRight {
//            if emojiMap.indexForKey(theEmoji) == nil {
//                print("RETURN NIL CRASH")
//                
//            } else {
//                textOnScreen.append(emojiMap[theEmoji]!)
//            }
//        }
//        
//        print(textOnScreen)
//    }
//    
//    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
//        controller.dismissViewControllerAnimated(true, completion: nil)
//    }
//    
//    
//}
//extension UIViewController {
//    func hideKeyboardWhenTappedAround() {
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
//        view.addGestureRecognizer(tap)
//    }
//    
//    func dismissKeyboard() {
//        view.endEditing(true)
//    }
//}
//
//
