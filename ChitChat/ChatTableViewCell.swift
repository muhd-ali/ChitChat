//
//  ChatTableViewCell.swift
//  ChitChat
//
//  Created by muaz hamza on 2017-03-20.
//  Copyright © 2017 PRO. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var homeMessageTextField: UITextView!
    @IBOutlet weak var awayMessageTextField: UITextView!
    
    var message: [String:String]? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        if message?["author"] == "home" {
            homeMessageTextField.text = message?["content"]
            awayMessageTextField.isHidden = true
        } else if message?["author"] == "away" {
            awayMessageTextField.text = message?["content"]
            homeMessageTextField.isHidden = true
        }
    }

}
