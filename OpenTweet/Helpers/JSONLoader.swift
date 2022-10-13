//
//  JSONLoader.swift
//  OpenTweet
//
//  Created by Juhel on 07/10/2022.
//

import Foundation

class JSONLoader {
    static func file(withName name: String, forClass bundleClass: AnyClass) -> Data {
        
        do {
            guard let url = Bundle(for: bundleClass).url(forResource: name, withExtension: "json") else {
                fatalError("json file \(name) not found")
            }
            return try Data(contentsOf: url)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
