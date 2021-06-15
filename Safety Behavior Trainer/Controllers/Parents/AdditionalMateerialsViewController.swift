//
//  AdditionalMateerialsViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import UIKit

class AdditionalMaterialsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButtonPrressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func poemsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "poemsSegue", sender: self)
    }
    
    @IBAction func cartoonsButtonPrerssed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "cartoonsListSegue", sender: self)
    }
}
