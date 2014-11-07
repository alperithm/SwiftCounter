//
//  ViewController.swift
//  SwiftStudy
//
//  Created by ALPEN on 2014/11/07.
//  Copyright (c) 2014年 alperithm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var counter: UILabel!
    var countNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = returnCounter()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func countUpButton(sender: AnyObject) {
        countNum++
        counter.text = returnCounter()
    }
    
    @IBAction func countResetButton(sender: AnyObject) {
        countNum = 0
        counter.text = returnCounter()
    }
    
    func returnCounter() -> String {
        return String(format: "%06d", countNum)
    }
}

