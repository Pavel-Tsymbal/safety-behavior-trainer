//
//  EntertainmentsViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 23.05.21.
//

import UIKit

class EntertainmentsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func fairyTailsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "fairyTailsSegue", sender: self)
    }
    
    @IBAction func cartoonsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "cartoonsSegue", sender: self)
    }
    
//    @IBAction func poemsButtonPressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "poemsSegue", sender: self)
//    }
}
