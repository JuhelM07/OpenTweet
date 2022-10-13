//
//  TweetView.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import SwiftUI

struct TweetView: View {
    
    @StateObject var tweetItem: TweetItem
    var body: some View {
        ZStack(alignment: .leading) {
            Color(UIColor.systemBackground)
            
            HStack(alignment: .top) {

                AsyncImage(url: URL(string:tweetItem.tweet.avatar ?? "www.google.com")) { avatar in
                    if let image = avatar.image {
                        image
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .top)
                            .cornerRadius(20)
                    } else if avatar.error != nil {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .foregroundColor(.gray)
                            .frame(width: 40, height: 40, alignment: .top)
                    } else {
                        ProgressView()
                    }
                }
                
                
                VStack(alignment: .leading) {
                    Text(tweetItem.tweet.author)
                        .bold()
                        .lineLimit(1)
                        .font(.system(size: 20))
                        .minimumScaleFactor(0.01)
                        
                    Spacer()
                            .frame(height: 4)
                    Text(.init(tweetItem.tweet.content))
                        .font(.system(size: 15))
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                            .frame(height: 4)
                    Text(tweetItem.dateString, format: Date.FormatStyle().day().month().year().hour().minute())
                        .font(.system(size: 12))
                }
            }
            .padding()
            
        }
        
    }
}

//struct TweetView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetView(tweetItem: tweetItem)
//    }
//}
