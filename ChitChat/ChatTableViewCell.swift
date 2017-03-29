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
        if message?["username"] == "iPhone007" {
            showMessage(inField: homeMessageTextField, andHide: awayMessageTextField)
        } else {
            showMessage(inField: awayMessageTextField, andHide: homeMessageTextField)
        }
    }
    
    func showMessage(inField: UITextView, andHide: UITextView) {
        inField.text = message?["content"]
        fixSize(textView: inField)
        andHide.isHidden = true
    }
    
    func fixSize(textView: UITextView) {
        let fixedWidth = textView.frame.size.width
        let xLoc = textView.frame.origin.x
        textView.translatesAutoresizingMaskIntoConstraints = true
        textView.sizeToFit()
        textView.frame.size.width = fixedWidth
        textView.frame.origin.x = xLoc
    }
    
}
