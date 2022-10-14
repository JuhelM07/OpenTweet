//
//  TweetThreadViewModel.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import Foundation

class TweetThreadViewModel: ObservableObject {
    var id: String
    var filteredReplies: [TweetItem]
    
    init(id: String, replies: [TweetItem]) {
        self.id = id
        self.filteredReplies = replies.filter {
            return $0.tweet.inReplyTo ?? "-" == id }
        
        //append any replies to the replies the original tweet
        for filteredReply in filteredReplies {
            for allReply in replies {
                if allReply.tweet.inReplyTo == filteredReply.tweet.id {
                    self.filteredReplies.append(allReply)
                }
            }
        }
    }
    
}
