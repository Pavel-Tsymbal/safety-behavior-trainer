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
    }

    @IBAction func dangerousStrangersButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "dangerousStrangersSegue", sender: self)
    }
    @IBAction func myKnowledgeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "myKnowledgeStageOneSegue", sender: self)
    }
    @IBAction func entertainmentsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "entertainmentsSegue", sender: self)
    }
    @IBAction func forParentsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "forParentsSegue", sender: self)
    }
}

