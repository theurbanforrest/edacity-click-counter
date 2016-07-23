//
//  ViewController.swift
//  ClickCounter
//
//  Created by Forrest Ching on 7/23/16.
//  Copyright © 2016 Urban Forrest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var isBGToggled = true
    var label: UILabel!
    var buttonUp: UIButton!
    var buttonDown: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        var buttonUp = UIButton()
        buttonUp.frame = CGRectMake(150, 250, 120, 60)
        buttonUp.setTitle("Count Up", forState: .Normal)
        buttonUp.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonUp)
        
        buttonUp.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        buttonUp.addTarget(self, action: #selector(ViewController.toggleBG), forControlEvents: UIControlEvents.TouchUpInside)
        
        var buttonDown = UIButton()
        buttonDown.frame = CGRectMake(150, 350, 120, 60)
        buttonDown.setTitle("Count Down", forState: .Normal)
        buttonDown.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(buttonDown)
        
        buttonDown.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        buttonDown.addTarget(self, action: #selector(ViewController.toggleBG), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
            self.count += 1
            self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    func toggleBG() {
        if(isBGToggled) {
            self.view.backgroundColor = UIColor.cyanColor()
            isBGToggled = false
        }
        else{
            self.view.backgroundColor = UIColor.whiteColor()
            isBGToggled = true
        }
        
    }
        
}


