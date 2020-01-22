//
//  BorderButton.swift
//  Swoosh-app
//
//  Created by Yevhenii Ganusich on 1/22/20.
//  Copyright © 2020 Yevhenii Ganusich. All rights reserved.
//

import UIKit

// Since border width is not available, we have to code these properties by ourself
class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
