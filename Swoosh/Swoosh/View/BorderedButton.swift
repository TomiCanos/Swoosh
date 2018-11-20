//
//  BorderedButton.swift
//  Swoosh
//
//  Created by Tomi on 19/11/2018.
//  Copyright © 2018 Tomi. All rights reserved.
//

import UIKit

class BorderedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
