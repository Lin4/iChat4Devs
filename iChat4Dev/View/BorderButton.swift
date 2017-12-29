//
//  BorderButton.swift
//  Swoosh
//
//  Created by Lingeswaran Kandasamy on 12/13/17.
//  Copyright © 2017 Kalaivani Rasalingam. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
    
}
