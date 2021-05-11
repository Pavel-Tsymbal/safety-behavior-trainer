//
//  DangerousUnknownsController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 11.05.21.
//

import UIKit

class DangerousStrangersController: UIViewController {
    
    @IBOutlet weak var storyTitle: UILabel!
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var storyText: UITextView!
    
    @IBOutlet weak var previousStoryButton: UIButton!
    @IBOutlet weak var nextStoryButton: UIButton!
    
    var dangerousStrangersBrain = DangerousStraingersBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }    
 
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        dangerousStrangersBrain.previousStory()
        updateView()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        dangerousStrangersBrain.nextStory()
        updateView()
    }
    
    func updateView() -> Void {
        storyTitle.text  = dangerousStrangersBrain.getCurrentStory().title
        storyText.text   = dangerousStrangersBrain.getCurrentStory().text
        storyImage.image = UIImage(named: dangerousStrangersBrain.getCurrentStory().imageName)
        
        previousStoryButton.isHidden = dangerousStrangersBrain.isFirstStory()
        nextStoryButton.isHidden     = dangerousStrangersBrain.isLastStory()
    }
    
}
