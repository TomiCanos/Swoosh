//
//  DesiredLeagueViewController.swift
//  Swoosh
//
//  Created by Tomi on 20/11/2018.
//  Copyright © 2018 Tomi. All rights reserved.
//

import UIKit

class DesiredLeagueViewController: UIViewController {
    
    @IBOutlet weak var manButton: BorderedButton!
    @IBOutlet weak var womanButton: BorderedButton!
    @IBOutlet weak var coedButton: BorderedButton!
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func manButtonPress(_ sender: Any) {
        selectLeagueAndPerformDesiredSenioritySegue(league: "man")
    }
    
    @IBAction func womanButtonPress(_ sender: Any) {
        selectLeagueAndPerformDesiredSenioritySegue(league: "woman")
    }
    
    @IBAction func coedButtonPress(_ sender: Any) {
        selectLeagueAndPerformDesiredSenioritySegue(league: "co-ed")
    }
    
    @IBAction func unwindFromDesiredSeniorityViewController (unwindSegue: UIStoryboardSegue) {}

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let desiredSeniorityViewController = segue.destination as? DesiredSeniorityViewController{
            desiredSeniorityViewController.player = player
        }
    }

    func selectLeagueAndPerformDesiredSenioritySegue(league: String) {
        player.desiredLeague = league
        performSegue(withIdentifier: "DesiredSenoritySegue", sender: self)
    }
    
}
