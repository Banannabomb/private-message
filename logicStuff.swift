//
//  logicStuff.swift
//  private message
//
//  Created by admin on 8/3/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
var alertedTitle:String = ""
var alertedMessage:String = ""
let alert = UIAlertController(title: alertedMessage, message: alertedMessage , preferredStyle: .alert)
class enterPressed {
    @IBAction func buttonTapped(_ sender: UIBarButtonItem) {
    
        if messageArray.contains(enteredPassphraseInTextView) {
            for x in 1...messageArray.count-1 {
                if enteredPassphraseInTextView == messageArray[x] {
                    alertedTitle = messageArray[x]
                    alertedMessage = "If you can see this, my program worked and you put the right passphrase"
                }
                else {
                    alertedTitle = "NO MESSAGE FOR YOU"
                    alertedMessage = "If you can see this, my program worked and you put the wrong passphrase (I hope)"
                }
            }
        }
    }

}

