//
//  ChatModel.swift
//  ChitChat
//
//  Created by muaz hamza on 2017-03-20.
//  Copyright © 2017 PRO. All rights reserved.
//

import Foundation

class ChatModel {
    
    var messages: [[String:String]] = [
        [
            "content" : "Hello!",
            "author" : "away",
            ],
        [
            "content" : "Hi",
            "author" : "home",
            ],
        ]
    
    func insertMessage(content: String, author: String) {
        messages.append([
            "content" : content,
            "author" : author,
            ])
    }
}
