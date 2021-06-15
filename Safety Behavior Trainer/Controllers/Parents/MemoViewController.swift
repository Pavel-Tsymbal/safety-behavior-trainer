//
//  MemoViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import UIKit

class MemoViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var memoBrain = MemoBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() -> Void {
        imageView.image = UIImage(named: memoBrain.getCurrentEntity())
        
        previousButton.isHidden = memoBrain.isFirstEntity()
        nextButton.isHidden     = memoBrain.isLastEntity()
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        memoBrain.previousEntity()
        updateView()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        memoBrain.nextEntity()
        updateView()
    }
}
