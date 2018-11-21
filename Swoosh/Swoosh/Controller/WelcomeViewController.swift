//
//  ViewController.swift
//  Swoosh
//
//  Created by Tomi on 19/11/2018.
//  Copyright © 2018 Tomi. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {super.viewDidLoad()}

    @IBAction func unwindFromDesiredLeagueViewController (unwindSegue: UIStoryboardSegue) {}
    
    @IBAction func getStartedButtonPress(_ sender: Any) {
        performSegue(withIdentifier: "DesiredLeagueSegue", sender: self)
    }
}

