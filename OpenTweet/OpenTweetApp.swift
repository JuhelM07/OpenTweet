//
//  OpenTweetApp.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import SwiftUI

@main
struct OpenTweetApp: App {
    var body: some Scene {
        WindowGroup {
            TimelineView(viewModel: TimelineViewModel())
        }
    }
}
