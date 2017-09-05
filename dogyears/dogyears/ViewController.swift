//
//  ViewController.swift
//  dogyears
//
//  Created by Darshan Patel on 9/4/17.
//  Copyright © 2017 dreamcatchers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ageTextfield: UITextField!
    @IBOutlet var ageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButton(_ sender: Any) {
        let ageInDogYears = 7 * Int(ageTextfield.text!)!;
        ageLabel.text = String(ageInDogYears);
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

