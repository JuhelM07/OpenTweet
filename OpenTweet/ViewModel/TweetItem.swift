//
//  TweetItems.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import Foundation
import SwiftUI

class TweetItem: ObservableObject, Identifiable {
    var id = UUID().uuidString
    var tweet: Tweet
    var isReply: Bool
    var filteredReplies: [TweetItem]?
    
    var dateString: Date {
        let dateFormatter = ISO8601DateFormatter()
        let date = dateFormatter.date(from: tweet.date)!
        return date
    }
    
    init(tweet: Tweet) {
        self.tweet = tweet
        isReply = tweet.inReplyTo == nil ? false : true
    }
        
    
}
