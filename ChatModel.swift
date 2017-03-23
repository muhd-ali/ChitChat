//
//  ChatModel.swift
//  ChitChat
//
//  Created by muaz hamza on 2017-03-20.
//  Copyright © 2017 PRO. All rights reserved.
//

import Foundation
import SocketIO

class ChatModel: NSObject {
    static let sharedInstance = ChatModel()
    
    var socket: SocketIOClient
    let username = "iPhone007"
    
    override init() {
        socket = SocketIOClient(
            socketURL: URL(string: "http://192.168.0.105")!,
            config: [.forceWebsockets(true)]
        )
        super.init()
        setupEvents()
    }
    
    func setupEvents() {
        setupConnectEvent()
        setupReceiveEvent()
        setupDisconnectEvent()
    }
    
    func setupConnectEvent() {
        socket.on("connect") { (data, ack) in
            print("socket connected")
        }
    }

    func setupDisconnectEvent() {
        socket.on("disconnect") { (data, ack) in
            print("socket disconnected")
        }
    }

    
    func setupReceiveEvent() {
        socket.on("messagePayload") { [weak weakSelf = self] (data, ack) in
            
                print("data size = \(data.count)")
                
            
            //weakSelf?.addMessage(content: data["date"], username: data["date"])
        }
    }
    
    func addMessage(content: String, username: String) {
        messages.append([
            "content" : content,
            "username" : username,
            "date" : String(describing: NSDate()),
            ])
    }
    
    var messages: [[String:String]] = [
        [
            "content" : "Hello!",
            "username" : "hacker101",
            "date" : String(describing: NSDate()),
            ],
        [
            "content" : "Hi",
            "username" : "iPhone007",
            "date" : String(describing: NSDate()),
            ],
        ]
    
    func sendMessage(content: String) {
//        let messagePayload: [String : Any] = [
//            "message" : content,
//            "username" : username,
//            "date" : NSDate(),
//            ]
//        
//        socket.emitWithAck("canUpdate", "hello").timingOut(after: 0) { [weak weakSelf = self] data in
//            weakSelf?.socket.emit("messagePayload", messagePayload)
//            weakSelf?.addMessage(content: content, username: username)
//        }
        addMessage(content: content, username: username)
    }
    
}
