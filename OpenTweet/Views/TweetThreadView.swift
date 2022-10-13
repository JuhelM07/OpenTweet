//
//  TweetThreadView.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import SwiftUI

struct TweetThreadView: View {
    
    @StateObject var viewModel: TweetThreadViewModel
    @State var tweetItem: TweetItem
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
                    .ignoresSafeArea()
            VStack {
                TweetView(tweetItem: tweetItem)
                    List {
                        ForEach(viewModel.filteredReplies) { filteredReplies in
                                TweetView(tweetItem: filteredReplies)
                                    .padding()
                        }
                }
            }

        }

    }
        
}

//struct TweetThreadView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetThreadView()
//    }
//}
