//
//  ViewController.swift
//  DotViewerBeta
//
//  Created by Henry Stahl on 9/24/17.
//  Copyright © 2017 Henry Stahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pos = [CGPoint]() //array of points
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var i = pos.count 
        while i > 0 {
            print(pos[i])
            i -= 1
        }
        
    }
    
    var touchIndicators: [UIView] = []
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            
            let position = touch.location(in: view)  //Im attempting to get this to add to DotView, not view
            let dot = UIView(frame: CGRect(x: position.x - 10, y: position.y - 10, width: 20, height: 20)) //creates the dot from cgrect function
            dot.alpha = 1.0 //dot transparency
            dot.backgroundColor = UIColor.blue //blue dot
            dot.layer.cornerRadius = 10 //cgrect creates rectangle, this rounds it into a dot
            self.view.addSubview(dot) //add dot to view, need to get this to add to DotView
            touchIndicators.append(dot)
            print(position)  //print coordinates, use these for array potentially?
            
            pos.append(position)

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

