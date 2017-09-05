//
//  ViewController.swift
//  name_acceptor
//
//  Created by Darshan Patel on 9/4/17.
//  Copyright © 2017 dreamcatchers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func submitButton(_ sender: Any) {
        nameLabel.text = nameTextField.text;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

