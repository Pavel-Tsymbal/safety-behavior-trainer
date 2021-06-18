//
//  SourceViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 15.06.21.
//

import UIKit

class SourceViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var imageBrain = SourceImageBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    func updateView() -> Void {
        imageView.image = UIImage(named: imageBrain.getCurrentEntity().imageName)
        previousButton.isHidden = imageBrain.isFirstEntity()
        nextButton.isHidden     = imageBrain.isLastEntity()
    }

    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        imageBrain.previousEntity()
        updateView()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        imageBrain.nextEntity()
        updateView()
    }
    
    @IBAction func selectButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "drawingViewSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "drawingViewSegue" {
            let destinationVC = segue.destination as! DrawingViewController
            
            destinationVC.selectedImage = imageBrain.getCurrentEntity()
        }
    }
}
