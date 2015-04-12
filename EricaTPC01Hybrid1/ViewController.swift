//
//  ViewController.swift
//  EricaTPC01Hybrid1
//
//  Created by prenez on 4/12/15.
//  Copyright (c) 2015 Prenezsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var subview: UIView!

    @IBOutlet weak var blueview: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.edgesForExtendedLayout = .None
        
        self.view.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.subview.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.subview.removeConstraints(self.subview.constraints())
        self.view.removeConstraints(self.view.constraints())

        /*
        
        // width and height interfere with the other constraints
        
        // height
        var constraint_view1_h : NSLayoutConstraint = NSLayoutConstraint (
            item: self.subview,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 200.0)
        
        
        // width
        var constraint_view1_v : NSLayoutConstraint = NSLayoutConstraint (
            item: self.subview,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant:  210.0)
        
        self.subview.addConstraint(constraint_view1_h)
        self.subview.addConstraint(constraint_view1_v)
        */
        
        
        // Center it
        
       var constraint = NSLayoutConstraint(
            item: self.subview,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: self.subview,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .CenterY,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraint(constraint)
        

        // Center blue in yellow
        
         constraint = NSLayoutConstraint(
            item: self.blueview,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: self.subview,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0)
        
        self.subview.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: self.blueview,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: self.subview,
            attribute: .CenterY,
            multiplier: 1,
            constant: 0)
        
        self.subview.addConstraint(constraint)

        
        // Set its aspect
        
        constraint = NSLayoutConstraint(item: self.subview,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: self.subview,
            attribute: .Height,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: self.blueview,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: self.subview,
            attribute: .Width,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: self.blueview,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: self.subview,
            attribute: .Height,
            multiplier: 1,
            constant: -200)
        
        self.view.addConstraint(constraint)

        
        // Constrain it to the superview's size
        
  /*
        constraint = NSLayoutConstraint(item: self.subview,
            attribute: .Width,
            relatedBy: .LessThanOrEqual,
            toItem: self.view,
            attribute: .Width,
            multiplier: 1,
            constant: -40)
        
        self.view.addConstraint(constraint) */
        
        constraint = NSLayoutConstraint(item: self.subview,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Height,
            multiplier: 1,
            constant: -40)
        
        self.view.addConstraint(constraint)
        
        // Add a weak "match size" constraint
        
        constraint = NSLayoutConstraint(item: self.subview,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Width,
            multiplier: 1,
            constant: -40)
        constraint.priority = 100
        self.view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: self.subview,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Height,
            multiplier: 1,
            constant: -40)
        constraint.priority = 100
        self.view.addConstraint(constraint)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

