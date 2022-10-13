//
//  OpenTweetTests.swift
//  OpenTweetTests
//
//  Created by Juhel on 07/10/2022.
//

import XCTest
@testable import OpenTweet

class TweetThreadViewModelTests: XCTestCase {
    
    var viewModel : TweetThreadViewModel!
    var replies: [TweetItem]!
    
    override func setUpWithError() throws {
        
        let data = JSONLoader.file(withName: "timeline", forClass: TimelineViewModel.self)
        
        do {
            let timeline = try JSONDecoder().decode(Timeline.self, from: data)

            replies = timeline.tweets.map { TweetItem(tweet: $0) }.filter { $0.isReply == true }
        } catch {
            XCTFail()
        }
       viewModel = TweetThreadViewModel(id: "00042", replies: replies)
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }


    func test_repliesCount() {
        
        XCTAssert(replies.count == 3)
    }
}
