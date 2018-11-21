//
//  SelectionShowerViewController.swift
//  Swoosh
//
//  Created by Tomi on 20/11/2018.
//  Copyright © 2018 Tomi. All rights reserved.
//

import UIKit

class SelectionShowerViewController: UIViewController {
    
    @IBOutlet weak var selectionShowerLabel: UILabel!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectionShowerLabel.text = "Well, so you've just picked to play against \(player.desiredSeniority!) \(player.desiredLeague!), is that ok?"
    }

}
