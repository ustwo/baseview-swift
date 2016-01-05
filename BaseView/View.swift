//
//  View.swift
//  BaseView
//
//  Created by Shagun Madhikarmi on 16/06/2015.
//  Copyright (c) 2015 ustwo. All rights reserved.
// 

import UIKit

class View: BaseView {

    private(set) var titleLabel: UILabel!

    
    // MARK: - Setup
    
    override func setup() {

        super.setup()

        self.backgroundColor = UIColor.redColor()
        
        // Title label

        self.titleLabel = UILabel(frame: CGRectZero)
        self.titleLabel!.text = "Some text"
        self.addSubview(self.titleLabel)
    }

    
    // MARK: - Constraints
    
    override func setupConstraints() {

        super.setupConstraints()
        
        self.addConstraint(
            NSLayoutConstraint(item: self.titleLabel,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0.0)
        )
        
        self.addConstraint(
            NSLayoutConstraint(item: self.titleLabel,
                attribute: NSLayoutAttribute.Right,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self,
                attribute: NSLayoutAttribute.Right,
                multiplier: 1.0,
                constant: 0.0)
        )
        
        self.addConstraint(
            NSLayoutConstraint(item: self.titleLabel,
                attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self,
                attribute: NSLayoutAttribute.Top,
                multiplier: 1.0,
                constant: 0.0)
        )
    }
}
