//
//  showEnterAPassphraseViewController.swift
//  private message
//
//  Created by admin on 7/18/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
var enteredPassphraseInTextView: String = ""
class showEnterAPassphraseViewController: UIViewController {
    
    @IBOutlet weak var passphraseEntryTextView: UITextView!
    //var enteredPassphraseInTextView: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        passphraseEntryTextView.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "enter":
            let enteredPassphrase = EnteredPassphrase()
            enteredPassphrase.content = passphraseEntryTextView.text ?? ""
            enteredPassphraseInTextView = enteredPassphrase.content
        case "cancel":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    
    }

}
