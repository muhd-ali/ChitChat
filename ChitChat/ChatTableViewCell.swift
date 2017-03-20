//
//  ChatTableViewCell.swift
//  ChitChat
//
//  Created by muaz hamza on 2017-03-20.
//  Copyright © 2017 PRO. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var messageTextField: UITextView!
    
    var message: [String:String]? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        messageTextField.text = message?["content"]
        if message?["author"] == "away" {
            messageTextField.backgroundColor = UIColor.brown
            messageTextField.frame.origin.x = 10
        }
    }

}
