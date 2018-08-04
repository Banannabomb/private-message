//
//  logicStuff.swift
//  private message
//
//  Created by admin on 8/3/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
//var alertedTitle:String = ""
//var alertedMessage:String = ""
//let alert = UIAlertController(title: alertedMessage, message: alertedMessage , preferredStyle: .alert)
class enterPressed: UIBarButtonItem {
    @IBOutlet weak var messageDisplay: UILabel!
    @IBAction func buttonPressed(_ sender: UIBarButtonItem) {
    
        if passphraseArray.contains(enteredPassphraseInTextView) {
            for x in 0...passphraseArray.count-1 {
                if enteredPassphraseInTextView == passphraseArray[x] {
                    messageDisplay.text = messageArray[x]
                    
                    //alertedTitle = messageArray[x]
                    //alertedMessage = "If you can see this, my program worked and you put the right passphrase"
                }
                else {
                    messageDisplay.text = "Wrong passphrase, or an error in my code"
                    //alertedTitle = "NO MESSAGE FOR YOU"
                    //alertedMessage = "If you can see this, my program worked and you put the wrong passphrase (I hope)"
                }
            }
        }
    }

}

