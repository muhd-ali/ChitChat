//
//  ChatViewController.swift
//  ChitChat
//
//  Created by muaz hamza on 2017-03-20.
//  Copyright © 2017 PRO. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var messageTextField: UITextView!
    
    @IBOutlet weak var tableView: UITableView!
    
    let chatModel = ChatModel()
    
    @IBAction func sendButton(_ sender: UIButton) {
        messageTextField.resignFirstResponder()
        chatModel.insertMessage(content: messageTextField.text, author: "home")
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.estimatedRowHeight = tableView.rowHeight
        //tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return chatModel.messages.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "message", for: indexPath)
        
        let message = chatModel.messages[indexPath.section]
        if let messageCell = cell as? ChatTableViewCell {
            messageCell.message = message
        }
        
        return cell
    }

}
