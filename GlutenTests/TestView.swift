//
//  TestView.swift
//  Gluten
//
//  Created by Wilbert Liu on 4/11/17.
//  Copyright © 2017 Wilbert Liu. All rights reserved.
//

import UIKit

class TestView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        glueSourceAndView()
    }

    init() {
        super.init(frame: CGRect.zero)
        glueSourceAndView()
    }
}
