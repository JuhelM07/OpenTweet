//
//  TimelineViewModel.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import Foundation

class TimelineViewModel: ObservableObject {
    @Published var tweetItems = [TweetItem]()
    @Published var repliesItems = [TweetItem]()
    
    init() {
        let data = JSONLoader.file(withName: "timeline", forClass: TimelineViewModel.self)
        
        do {
            let timeline = try JSONDecoder().decode(Timeline.self, from: data)
            tweetItems = timeline.tweets.map { TweetItem(tweet: $0) }.filter { $0.isReply == false }
            repliesItems = timeline.tweets.map { TweetItem(tweet: $0) }.filter { $0.isReply == true }
            
        } catch {
            print(error)
        }

        
    }
    
}
