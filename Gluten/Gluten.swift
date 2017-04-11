//
//  Gluten.swift
//  Gluten
//
//  Created by Wilbert Liu on 4/11/17.
//  Copyright © 2017 Wilbert Liu. All rights reserved.
//

import Foundation

extension UIView {
    open func glueSourceAndView() {
        let className = String(describing: type(of: self))
        let bundle = Bundle(for: self.classForCoder)

        guard bundle.path(forResource: className, ofType: "nib") != nil else {
            return
        }

        if let nib = bundle.loadNibNamed(className, owner: self, options: nil)?.first as? UIView {
            nib.translatesAutoresizingMaskIntoConstraints = false
            addSubview(nib)

            let leadingConstraint = NSLayoutConstraint(
                item: nib,
                attribute: .leading,
                relatedBy: .equal,
                toItem: self,
                attribute: .leading,
                multiplier: 1,
                constant: 0
            )

            let topConstraint = NSLayoutConstraint(
                item: nib,
                attribute: .top,
                relatedBy: .equal,
                toItem: self,
                attribute: .top,
                multiplier: 1,
                constant: 0
            )

            let trailingConstraint = NSLayoutConstraint(
                item: nib,
                attribute: .trailing,
                relatedBy: .equal,
                toItem: self,
                attribute: .trailing,
                multiplier: 1,
                constant: 0
            )

            let bottomConstraint = NSLayoutConstraint(
                item: nib,
                attribute: .bottom,
                relatedBy: .equal,
                toItem: self,
                attribute: .bottom,
                multiplier: 1,
                constant: 0
            )

            addConstraints([leadingConstraint, trailingConstraint, topConstraint, bottomConstraint])
        }
    }
}
