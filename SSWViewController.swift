//
//  SSWViewController.swift
//  SuchSwift
//
//  Created by tyler on 6/3/14.
//  Copyright (c) 2014 Tyler Rasor. All rights reserved.
//

import UIKit

class SSWViewController: UIViewController {
    
    var labels:SSWData? = SSWData.init()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = UIColor.whiteColor()
        addLabel("wow")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addLabel(text:NSString) {
        let label = UILabel()
        label.backgroundColor = UIColor.clearColor()
        
        //Can't do random color
        //initWithRed:green:blue:alpha: not yet implemented for Swift
        label.textColor = UIColor.redColor()
        //or custom font
        label.text = text

        label.sizeToFit()
        
        var width = self.view.bounds.size.width - label.bounds.width
        var xPosition = arc4random_uniform(UInt32(width))
        var height = self.view.bounds.size.height - label.bounds.height
        var yPosition = arc4random_uniform(UInt32(height))
        
        var frame = label.frame
        frame.origin = CGPointMake(CGFloat(xPosition), CGFloat(yPosition))
        label.frame = frame
        
        self.view!.addSubview(label)
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        var randomItem = self.labels!.randomItem()
        self.addLabel(randomItem)
    }
}
