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

        self.titleLabel = UILabel()
        self.titleLabel.text = "Some text"
        self.addSubview(titleLabel)
    }

    
    // MARK: - Constraints
    
    override func setupConstraints() {

        super.setupConstraints()

        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false

        self.addConstraint(NSLayoutConstraint(item: self.titleLabel, attribute: .Left, relatedBy: .Equal, toItem: self.titleLabel.superview, attribute: .Left, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: self.titleLabel, attribute: .Right, relatedBy: .Equal, toItem: self.titleLabel.superview, attribute: .Right, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: self.titleLabel, attribute: .Top, relatedBy: .Equal, toItem: self.titleLabel.superview, attribute: .Top, multiplier: 1.0, constant: 0.0))
    }
}
