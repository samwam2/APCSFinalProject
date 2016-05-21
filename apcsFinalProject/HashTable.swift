//
//  HashTable.swift
//  apcsFinalProject
//
//  Created by ShowalterS18 on 5/13/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//

import Foundation
import UIKit


class HashTable {
    
    var size: Int
    var count = 0
    var buckets = [HashBucket?]()
    
    init(size: Int) {
        self.size = size
        self.buckets = [HashBucket?](count: size, repeatedValue: nil)
    }
    
    // set
    func set(key: String, value: AnyObject?) {
        if Float(count) / Float(size) > 0.70 {
            self.resize()
        }
        
        
        if let sameKeyBucket: AnyObject = self.get(key) {
            // handle different values later
            return
        }
        
        let newBucket = HashBucket(key: key, value: value)
        let index = self.indexForHash(newBucket.getHash())
        self.count++
        
        if let collisionBucket = self.buckets[index] {
            newBucket.nextBucket = collisionBucket
            self.buckets[index] = newBucket
            return
        } else {
            self.buckets[index] = newBucket
        }
    }
    
    // get
    func get(key: String) -> HashBucket? {
        if let bucket = self.buckets[self.indexForHash(key.hash)]?.getBucketWithKey(key) {
            return bucket
        }
        return nil
    }
    
    // remove
    func remove(key: String) -> HashBucket? {
        let index = self.indexForHash(key.hash)
        if let b = buckets[index] {
            let (first, target) = b.remove(key)
            buckets[index] = first
            if let t = target {
                self.count--
            }
            return target
        }
        return nil
    }
    
    // containsKey
    func containsKey(key: String) -> Bool {
        return get(key) == nil ? false : true
    }
    
    
    func indexForHash(hash: Int) -> Int {
        return hash % size
    }
    
    func resize() {
        self.count = 0
        let oldArray = self.buckets
        self.size *= 2
        self.buckets = [HashBucket?](count: self.size, repeatedValue: nil)
        for i in oldArray {
            if let bucket = i {
                var b = bucket
                while(true) {
                    self.set(b.key, value: b.value)
                    if let next = b.nextBucket {
                        b = next
                    } else {
                        break
                    }
                }
            }
        }
        
    }
    
    
    
}