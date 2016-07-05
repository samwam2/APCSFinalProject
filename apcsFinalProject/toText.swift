//
//  toText.swift
//  apcsFinalProject
//
//  Created by ShowalterS18 on 5/6/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//

import Foundation
import UIKit

class toText {
    //Vars used
    var emojiArrayTemp: String = ""
    var onScreenText = [String]()
    var testString: String = ""
    
    //init for the class
    init(emojiArrayTemp: String) {
        self.emojiArrayTemp = emojiArrayTemp
        print(emojiArrayTemp)
        compare()
        print(onScreenText)
    }
    
    //Gets the responses and puts them into a string from a var and returns the response on call
    func getTextOnScreen(testString: String) -> String {
        var temp = onScreenText.joinWithSeparator(" ,")
        return temp
    }
    
    //The Dictionary with the emojis and the value
    var emojiMap:Dictionary<String,String> = ["😀" : "Happy Face", "😬" : "Ahhhh…", "😁" : "Smiling ahhh face", "😂" : "laughing and crying", "😃" : "happy face 2", "😄" : "very happy", "😅" : "happily shy", "😉" : "wink", "😊" : "blushing", "😋" : "silly",  "😎" : "cool", "😍" : "love", "😘" : "blowing a kiss", "😗" : "duck face", "😚" : "blush kissing", "☺️" : "grinning", "😇" : "angelic", "😐" : "emotionless", "😑": "disappointed", "😶" : "mouthless","😏" : "flirting", "😣" : "scared", "😥" : "disappointed", "😮" : "shocked","😯" : "surprised", "😪" : "crying", "😫" : "fed up", "😴" : "sleeping", "😌" : "pleased", "😛" : "tongue out","😜" : "crazy", "😝" : "playful", "😒" : "unimpressed", "😓" : "saddened", "😔" : "sorrow", "😕" : "confused", "😖" : "confounded", "😞" : "disappointed", "😟" : "worried", "😤" : "frustrated", "😢" : "teared up", "😭" : "sobbing", "😦" : "yawning", "😨" : "scared", "😩" : "weary", "😰" : " concerned", "😱" : "screamed", "😳" : "embarrassed", "😵" : "dizzy", "😷" : "masked", "😡" : "very angry", "😠" : "angry", "🤑" : "stupid rich", "🤓" : "nerdy", "🤗" : "hugging", "🙄" : "rolling eyes", "🤔" : "thinking", "🤕" : "injured", "🤒" : "sick", "🤐" : "silenced", "😲" : "dead", "🙃" : "upside down", "☹️" : "frown", "🙁" : "perplexed", "😧" : "sad and surprised", "💩" : "poop", "😈" : "purple devil", "👿" : "angry purple devil", "👹" : "mask", "👺" : "angry mask", "💀" : "skull", "👻" : "ghost", "👽" : "alien", "🤖" : "robot", "😺" : "happy cat", "😸" : "delighted cat", "😹" : "crying laughing cat", "😻" : "cat in love", "😼" : "smirking cat", "😽" : "kissy cat", "🙀" : "spooked cat", "😿" : "crying cat", "😾" : "angry cat", "🙌" : "hands up", "👏" : "clapping", "👋" : "waving", "👍" : "thumbs up", "👎" : "thumbs down", "👊" : "fist", "✊" : "fist up", "✌️" : "peace", "👌" : "ok", "✋" : "palm", "👐" : "flying hands", "💪" : "muscle arm", "🙏" : "pray", "☝️" : "point up", "👆" : "point up back hand", "👇" : "point down", "👈" : "point left", "👉" : "point right", "🖕" : "middle finger", "🖐" : "open hand", "🤘" : "rock out", "🖖" : "vulcan salute ", "✍️" : "writing", "💅" : "painting nails", "👄" : "lips", "👅" : "tongue", "👂" : "ear", "👃" : "nose", "👁" : "eye", "👀" : "eyes", "👤" : "shadow", "👥" : "two shadows", "🗣" : "yelling shadow", "👶" : "baby", "👦" : "young boy", "👧" : "young girl", "👨" : "teen boy", "👩" : "teen girl", "👱" : "young adult", "👴" : "old man", "👵" : "old woman", "👲" : "hat guy", "👳" : "turban guy", "👮" : "police man", "👷" : "EMT", "💂" : "bearskin guy", "🕵" : "detective", "🎅" : "santa", "👼" : "angel", "👸" : "princess", "👰" : "guardian angel", "🚶" : "walking", "🏃" : "running", "💃" : "dancing", "👯" : "ballerinas", "👫" : "couple", "👬" : "gay couple", "👭" : "lesbian couple", "🙇" : "thinking boy", "💁" : "sassy woman", "🙅" : "no good", "🙋" : "woman raising hand", "🙎" : "pouting woman", "🙍" : "frowning woman", "💇" : "haircut", "💆" : "face massage", "💑" : "loving couple", "👩‍❤️‍👩" : "loving lesbian couple", "👨‍❤️‍👨" : "loving gay couple", "💏" : "kissing couple", "👩‍❤️‍💋‍👩" : "kissing lesbian couple", "👨‍❤️‍💋‍👨" : "kissing gay couple", "👪" : "family of three with a boy", "👨‍👩‍👧" : "family of three with a girl", "👨‍👩‍👧‍👦" : "family of four with a girl and a boy", "👨‍👩‍👧‍👧": "family of four with two girls", "👨‍👩‍👦‍👦" : "family of four with two boys", "👩‍👩‍👦" : "lesbian couple with a boy", "👩‍👩‍👧" : "lesbian couple with a girl", "👩‍👩‍👧‍👦" : "lesbian couple with a boy and a girl", "👩‍👩‍👦‍👦" : "lesbian couple with two boys", "👩‍👩‍👧‍👧" : "lesbian couple with two girls", "👨‍👨‍👦" : "gay couple with a boy", "👨‍👨‍👧" : "gay couple with a girl", "👨‍👨‍👧‍👦" : "gay couple with a boy and a girl", "👨‍👨‍👦‍👦" : "gay couple with two boys", "👨‍👨‍👧‍👧" : "gay couple with two girls", "👚" : "woman's shirt",  "👕" : "men's shirt", "👔" : "dress shirt", "👗" : "skirt", "👙" : "bikini", "👘" : "kimono", "💄" : "lipstick", "💋" : "lipstick lips", "👣" : "feet", "👠" : "heels", "👡" : "sandals", "👢" : "woman's boot", "👞" : "man’s shoe", "👟" : "tennis shoes", "👒" : "woman’s hat", "🎩" : "dress hat", "⛑" : "rescue helmet", "🎓" : "academic hat", "👑" : "crown", "🎒" : "backpack", "👝" : "clutch", "👛" : "purse", "👜" : "handbag", "💼" : "brief case", "👓" : "glasses", "🕶" : "sunglasses", "🌂" : "umbrella", "🐶" : "dog", "🐱": "cat", "🐭": "mouse", "🐹": "mouse", "🐰": "rabbit", "🐻": "bear", "🐼": "panda", "🐨": "koala", "🐯": "tiger", "🦁": "lion", "🐮": "cow", "🐷": "pig", "🐽": "pig nose", "🐸": "frog", "🐙": "octopus", "🐵": "monkey", "🙈": "hands over eye monkey", "🙉": "hands over ears monkey", "🙊": "hands over ears monkey", "🐒": "sitting monkey", "🐔": "chicken", "🐧": "penguin", "🐦": "bird", "🐤": "baby bird", "🐣": "hatching bird", "🐥": "hatched bird", "🐺": "wolf", "🐗": "boar", "🐴": "horse", "🦄": "unicorn!", "🐝": "bee", "🐛": "bug", "🐌": "snail", "🐞": "beetle", "🐜": "ant", "🕷": "spyder", "🦂": "scorpion", "🦀": "crab", "🐍": "snake", "🐢": "turtle", "🐠": "tropical fish", "🐟": "fish", "🐡": "puffer fish", "🐬": "dolphin", "🐳": "jumping whale", "🐋": "whale", "🐊": "crocodile", "🐆": "leopard", "🐅": "tiger", "🐃": "buffalo", "🐂": "ox", "🐄": "cow", "🐪": "camel", "🐫": "two hump camle", "🐘": "elephant", "🐐": "goat", "🐏": "ram", "🐑": "sheep", "🐎": "racing horse", "🐖": "pig", "🐀": "rat", "🐁": "mouse", "🐓": "rooster", "🦃": "turkey", "🕊": "dove", "🐕": "dog", "🐩": "poodle", "🐈": "cat", "🐇": "rabbit", "🐿": "chipmunk", "🐾": "paw prints", "🐉": "dragon", "🐲": "dragon face", "🌵": "catus", "🎄": "christmas tree", "🌲": "evergreen tree", "🌳": "tree", "🌴": "palm tree", "🌱": "seedling", "🌿": "herb", "☘": "shamrock", "🍀": "lucky clover", "🎍": "pine", "🎋": "tanaba tree", "🍃": "falling leaves", "🍂": "fallen leaf", "🍁": "maple leaf", "🌾": "ear of rice", "🌺": "hibiscus", "🌻": "sunflower", "🌹": "rose", "🌷": "tulip", "🌼": "blossom", "🌸": "cherry blossom", "💐": "bouquet of flowers", "🍄": "mushroom", "🌰": "chestnut", "🎃": "jack-o-latern", "🐚": "cpiral shell", "🕸": "spyder web", "🌎": "earth", "🌍": "earth", "🌏": "earth", "🌕": "full moon", "🌖": "quater moon", "🌗": "half moon", "🌘": "three quaters moon", "🌑": "new moon", "🌒": "moon", "🌓": "moon", "🌔": "moon", "🌚": "moon with face", "🌝": "moon with face", "🌛": "half moon with face", "🌜": "half moon with face", "🌞": "sun with face", "🌙": "moon", "⭐️": "star", "🌟": "shinning star", "💫": "dizzy", "✨": "sparkles", "☄️": "comet", "☀️": "sun", "🌤": "sunny woth clouds", "⛅️": "sun hehind cloud", "🌥": "sun behind cloud", "🌦": "sunny and raining", "☁️": "cloud", "🌧": "raining", "⛈": "rain and thunder storm", "🌩": "thunder storm", "⚡️": "lighting", "🔥": "fire", "💥": "boom", "❄️": "snowflake", "🌨": "snowing", "☃️": "snowman", "⛄️": "snowman", "🌬": "face blowing wind", "💨": "wind", "🌪": "torando", "🌫": "fog", "☂️": "umbrella", "☔️": "rain on umbrella", "💧": "water droplet", "💦": "splashing water", "🌊": "big wave"] //"😀": "happy"]
    
    //Function that compares the user input the big Dictionary above and gets the value for the emoji,key.
    func compare() {
        //var test = emojiArray.componentsSeparatedByString(", ")
        var emojiArrayRight = emojiArrayTemp.characters.map { String($0) }
        var theEmoji: String
        
        for theEmoji in emojiArrayRight {
            if emojiMap.indexForKey(theEmoji) == nil {
                print("RETURN NIL CRASH")
                
            } else {
                onScreenText.append(emojiMap[theEmoji]!)
            }
        }
        
    }  
} //last closing bracket for the class 