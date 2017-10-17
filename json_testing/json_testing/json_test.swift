//
//  json_test.swift
//  json_testing
//
//  Created by Darshan Patel on 10/17/17.
//  Copyright © 2017 Darshan Patel. All rights reserved.
//

import Foundation


class json_test {
    // Example JSON with object root:
    /*
     {
     "someKey": 42.0,
     "anotherKey": {
     "someNestedKey": true
     }
     }
     */
    if let dictionary = jsonWithObjectRoot as? [String: Any] {
        if let number = dictionary["someKey"] as? Double {
            // access individual value in dictionary
        }
        
        for (key, value) in dictionary {
            // access all key / value pairs in dictionary
        }
        
        if let nestedDictionary = dictionary["anotherKey"] as? [String: Any] {
            // access nested dictionary values by key
        }
    }
    
    // Example JSON with array root:
    /*
     [
     "hello", 3, true
     ]
     */
    if let array = jsonWithArrayRoot as? [Any] {
        if let firstObject = array.first {
            // access individual object in array
        }
        
        for object in array {
            // access all objects in array
        }
        
        for case let string as String in array {
            // access only string values in array
        }
    }
}
