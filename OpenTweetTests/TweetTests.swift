//
//  TweetTests.swift
//  OpenTweetTests
//
//  Created by Juhel on 08/10/2022.
//

import XCTest
@testable import OpenTweet

class TweetTests: XCTestCase {
    
    var tweet: Tweet!
    
    override func setUpWithError() throws {
        let data = JSONLoader.file(withName: "tweet", forClass: TimelineViewModel.self)
        
        tweet = try (JSONDecoder().decode(Tweet.self, from: data))
    }

    override func tearDownWithError() throws {
        tweet = nil
    }

    func test_decodeTweets() {
        
        XCTAssertTrue(tweet.id == "")
    }
}
