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
    var tweetItem: TweetItem!
    
    override func setUpWithError() throws {
        let data = JSONLoader.file(withName: "tweet", forClass: TimelineViewModel.self)
        
        tweet = try (JSONDecoder().decode(Tweet.self, from: data))
    }

    override func tearDownWithError() throws {
        tweet = nil
    }

    func test_decodeTweets() {
        
        XCTAssertTrue(tweet.id == "00001")
        XCTAssertTrue(tweet.author == "@randomInternetStranger")
        XCTAssertTrue(tweet.content == "Man, I'm hungry. I probably should book a table at a restaurant or something. Wonder if there's an app for that?")
        XCTAssertTrue(tweet.avatar == "https://i.imgflip.com/ohrrn.jpg")
        XCTAssertTrue(tweet.date == "2020-09-29T14:41:00-08:00")
    }
}
