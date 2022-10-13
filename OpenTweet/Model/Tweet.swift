//
//  Tweet.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import Foundation

struct Timeline: Codable {
    var tweets: [Tweet]
    
    enum CodingKeys: String, CodingKey {
        case tweets = "timeline"
    }
}

struct Tweet: Codable {
    var id: String
    var author: String
    var content: String
    var date: String
    var avatar: String?
    var inReplyTo: String?
}




