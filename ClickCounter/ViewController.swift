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
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        
    }
}

