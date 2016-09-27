//
//  View.swift
//  BaseView
//
//  Created by Shagun Madhikarmi on 16/06/2015.
//  Copyright (c) 2015 ustwo. All rights reserved.
// 

import UIKit

class View: BaseView {

    fileprivate(set) var titleLabel: UILabel!

    
    // MARK: - Setup
    
    override func setup() {

        super.setup()

        self.backgroundColor = UIColor.red

        self.titleLabel = UILabel()
        self.titleLabel.text = "Some text"
        self.addSubview(titleLabel)
    }

    
    // MARK: - Constraints
    
    override func setupConstraints() {

        super.setupConstraints()

        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false

        self.addConstraint(NSLayoutConstraint(item: self.titleLabel, attribute: .left, relatedBy: .equal, toItem: self.titleLabel.superview, attribute: .left, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: self.titleLabel, attribute: .right, relatedBy: .equal, toItem: self.titleLabel.superview, attribute: .right, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: self.titleLabel, attribute: .top, relatedBy: .equal, toItem: self.titleLabel.superview, attribute: .top, multiplier: 1.0, constant: 0.0))
    }
}
