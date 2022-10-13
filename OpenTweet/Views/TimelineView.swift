//
//  ContentView.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import SwiftUI

struct TimelineView: View {
    
    @StateObject var viewModel: TimelineViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.tweetItems) { tweetItem in
                    Section {
                        ZStack {
                            TweetView(tweetItem: tweetItem)
                                .padding()
                            NavigationLink(destination: TweetThreadView(viewModel: TweetThreadViewModel(id: tweetItem.tweet.id, replies: viewModel.repliesItems), tweetItem: tweetItem)) {
                                EmptyView()
                                    .listRowBackground(Color.clear)
                            }
                            .opacity(0)
                        }
                    }
                    
                    //.fixedSize(horizontal: true, vertical: false)
                }
                
            }
            .navigationTitle("OpenTweet")
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(viewModel: TimelineViewModel())
    }
}
