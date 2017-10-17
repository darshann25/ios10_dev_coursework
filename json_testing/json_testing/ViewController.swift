//
//  ViewController.swift
//  json_testing
//
//  Created by Darshan Patel on 10/17/17.
//  Copyright © 2017 Darshan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://api.fixer.io/latest")
        let task = URLSession.shared.dataTask(with: url!){(data, response, error) in
            if (error != nil) {
                print("ERROR!")
            }
            else {
                if let content = data {
                    do {
                        // Array
                        let json_array = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        print(json_array)
                    }
                    catch {
                        
                    }
                }
            }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

