//
//  View.swift
//  BaseView
//
//  Created by Shagun Madhikarmi on 16/06/2015.
//  Copyright (c) 2015 ustwo. All rights reserved.
//

import UIKit

class View: BaseView {

    fileprivate let titleLabel = UILabel()


    // MARK: - Setup

    override func setup() {

        super.setup()

        backgroundColor = UIColor.red

        titleLabel.text = "Some text"
        addSubview(titleLabel)
    }


    // MARK: - Constraints

    override func setupConstraints() {

        super.setupConstraints()

        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: titleLabel.superview, attribute: .left, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: titleLabel.superview, attribute: .right, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel.superview, attribute: .top, multiplier: 1.0, constant: 0.0))
    }
}
