//
//  showWriteMessageViewController.swift
//  private message
//
//  Created by admin on 7/18/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
var messageArray: [String] = []
class showWriteMessageViewController: UIViewController {
    
    @IBOutlet weak var messageTextView: UITextView!
    
    var messageArray: [String?] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        messageTextView.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "save":
            let message = Message()
            message.content = messageTextView.text ?? ""
            //print("save bar button item tapped")
            messageArray.append(message.content)
        case "cancel":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    }
    
}
var showWriteMessageViewControllerInstance = showWriteMessageViewController.self
