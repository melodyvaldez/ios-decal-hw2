//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var yayButton: UIButton!
    @IBOutlet var hahaButton: UIButton!
    @IBOutlet var loserButton: UIButton!
    @IBOutlet var heheButton: UIButton!
    @IBOutlet var omgButton: UIButton!
    @IBOutlet var yasButton: UIButton!
    @IBOutlet var ilyButton: UIButton!
    @IBOutlet var fuButton: UIButton!
    @IBOutlet var okieButton: UIButton!
    @IBOutlet var oopsButton: UIButton!
    @IBOutlet var awwButton: UIButton!
    @IBOutlet var nuButton: UIButton!
    @IBOutlet var lameButton: UIButton!
    @IBOutlet var wahButton: UIButton!
    @IBOutlet var nevarButton: UIButton!
    @IBOutlet var youSuckButton: UIButton!
    @IBOutlet var ughButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    
    // With the optional, not gonna make an instance of it rn, don't need an init to initialize keyboardView
    var keyboardView: UIView!

    @IBAction func didTapButton(emoji: UIButton) {
        let proxy = textDocumentProxy as UITextDocumentProxy
        if let emojiName = emoji.titleLabel?.text {
            switch emojiName {
                case "😄":
                    proxy.insertText("YAAAY")
                case "😂":
                    proxy.insertText("HAHAHA")
                case "😝":
                    proxy.insertText("LOSEEER")
                case "😏":
                    proxy.insertText("HEHEHE")
                case "😍":
                    proxy.insertText("OMGGG")
                case "😁":
                    proxy.insertText("YAAAS")
                case "😘":
                    proxy.insertText("I LOVE YOUUU")
                case "😫":
                    proxy.insertText("FUUU")
                case "😊":
                    proxy.insertText("OKIEEE")
                case "😅":
                    proxy.insertText("OOPSIES")
                case "😞":
                    proxy.insertText("AWWW")
                case "😢":
                    proxy.insertText("NUUU")
                case "😒":
                    proxy.insertText("LAAAME")
                case "😭":
                    proxy.insertText("WAAAH")
                case "😠":
                    proxy.insertText("NEVAAAR")
                case "😑":
                    proxy.insertText("YOU SUUUCK")
                case "😓":
                    proxy.insertText("UGHHH")
                case "❌":
                    proxy.deleteBackward()
                case "space":
                    proxy.insertText(" ")
                case "rtn":
                    proxy.insertText("\n")
                default:
                    proxy.insertText("")
            }
        }
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)   // nib object has UIview
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView   // actually instantiates the UIview
        keyboardView.frame = view.frame //adding keyboard over the screen on your phone
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
    }


}
