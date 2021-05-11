//
//  ViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 8.05.21.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dangerousStrangersPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "dangerousStrangersSegue", sender: self)
    }
    
}

