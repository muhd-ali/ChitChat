//
//  ChatViewController.swift
//  ChitChat
//
//  Created by muaz hamza on 2017-03-20.
//  Copyright © 2017 PRO. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let chatModel = ChatModel()
    
    @IBAction func sendButton(_ sender: UIButton) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "message", for: indexPath)
        
        let message = chatModel.messages[indexPath]
        
        
        return cell
    }

}
