//
//  DesiredSeniorityViewController.swift
//  Swoosh
//
//  Created by Tomi on 20/11/2018.
//  Copyright © 2018 Tomi. All rights reserved.
//

import UIKit

class DesiredSeniorityViewController: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func begginerButtonPress(_ sender: Any) {
        selectSeniorityAndPerformSelectionShowerSegue(seniority: "begginer")
    }
    
    @IBAction func ballerButtonPress(_ sender: Any) {
        selectSeniorityAndPerformSelectionShowerSegue(seniority: "baller")
    }
    
    @IBAction func unwindFromSelectionShoweViewController (unwindSegue: UIStoryboardSegue){}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectionShowerViewController = segue.destination as? SelectionShowerViewController{
            selectionShowerViewController.player = player
        }
    }
    
    func selectSeniorityAndPerformSelectionShowerSegue(seniority: String) {
        player.desiredSeniority = seniority
        performSegue(withIdentifier: "SelectionShowerSegue", sender: self)
    }
}
