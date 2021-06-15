//
//  PoemsViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 23.05.21.
//

import UIKit

class PoemsViewController: UIViewController {
    
    @IBOutlet weak var storyTitle: UILabel!
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var storyText: UITextView!
    
    @IBOutlet weak var previousStoryButton: UIButton!
    @IBOutlet weak var nextStoryButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var poemsBrain = PoemsBrain()
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        poemsBrain.previousEntity()
        updateView()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        poemsBrain.nextEntity()
        updateView()
    }
    
    func updateView() -> Void {
        storyTitle.text  = poemsBrain.getCurrentEntity().title
        storyText.text   = poemsBrain.getCurrentEntity().text
        storyImage.image = UIImage(named: poemsBrain.getCurrentEntity().imageName)
        
        previousStoryButton.isHidden = poemsBrain.isFirstEntity()
        nextStoryButton.isHidden     = poemsBrain.isLastEntity()
    }

}
