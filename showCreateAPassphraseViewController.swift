//
//  showCreateAPassphraseViewController.swift
//  private message
//
//  Created by admin on 7/18/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
var passphraseArray: [String] = []
class showCreateAPassphraseViewController: UIViewController {
    
    @IBOutlet weak var passphraseTextView: UITextView!
    //var passphraseArray: [String?] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        passphraseTextView.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "save":
            let passphrase = Passphrase()
            //print("save bar button item tapped")
            passphrase.content = passphraseTextView.text ?? ""
            passphraseArray.append(passphrase.content)
        case "cancel":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    }
    
}

