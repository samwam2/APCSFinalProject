//
//  HashBucket.swift
//  apcsFinalProject
//
//  Created by ShowalterS18 on 5/18/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//

import Foundation


class HashBucket {
    
    var key : String
    var value : AnyObject?
    var nextBucket : HashBucket?
    
    init(key: String, value: AnyObject?) {
        self.key = key
        self.value = value
    }
    
    func getHash() -> Int {
        return key.hash
    }
    
    func getBucketWithKey(key: String) -> HashBucket? {
        if key == self.key {
            return self
        }
        else if let next = self.nextBucket {
            return next.getBucketWithKey(key)
        }
        return nil
    }
    
    func remove(key: String) -> (next: HashBucket?, target: HashBucket?) {
        if key == self.key {
            return (self.nextBucket, self)
        } else if let nextBucket = self.nextBucket {
            let (n, t) = nextBucket.remove(key)
            self.nextBucket = n
            return (self, t)
        }
        return (self, nil)
    }
    
    
    
}