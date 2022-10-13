//
//  AttributedText.swift
//  OpenTweet
//
//  Created by Juhel on 13/10/2022.
//

import SwiftUI

struct HighlightedText: View {
    let text: String
    let highlighted: String

    var body: some View {
        Text(attributedString)
    }

    private var attributedString: AttributedString {
        var attributedString = AttributedString(text)

        if let range = attributedString.range(of: highlighted) {
            attributedString[range].foregroundColor = .red
        }

        return attributedString
    }
}
