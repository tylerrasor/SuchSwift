//
//  SSWData.swift
//  SuchSwift
//
//  Created by tyler on 6/3/14.
//  Copyright (c) 2014 Tyler Rasor. All rights reserved.
//

import Foundation

class SSWData:NSObject {
    
    var adjectives:NSArray
    var nouns:NSArray
    var counter = 0
    
    init() {
        self.adjectives = ["such ", "very ", "much ", "so "]
        self.nouns = ["xcode", "app", "swift"]
    }
    
    func randomItem() -> NSString {
        counter++
        var tempStr:String
        if (self.counter % 5 == 0) {
            tempStr = "wow"
        } else {
            var adjIndex = arc4random_uniform(UInt32(adjectives.count))
            var nounIndex = arc4random_uniform(UInt32(nouns.count))
            tempStr = self.adjectives[Int(adjIndex)] as String
            tempStr += self.nouns[Int(nounIndex)] as String
        }
        
        return tempStr as NSString
    }
}
