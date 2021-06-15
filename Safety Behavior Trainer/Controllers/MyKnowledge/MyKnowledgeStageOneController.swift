//
//  MyKnowledgeStageOneController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 19.05.21.
//

import UIKit
import AVFoundation

class MyKnowledgeStageOneController: UIViewController {
    
    @IBOutlet weak var stageOneImageView: UIImageView!
    @IBOutlet weak var stageOneLabel: UILabel!
    @IBOutlet weak var stageOneTrueButton: UIButton!
    @IBOutlet weak var stageOneFalseButton: UIButton!
    
    var myKnowledgeStageOneBrain = MyKnowledgeStageOneBrain()

    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    @IBAction func stageOneCancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func updateView() -> Void {
        stageOneImageView.image = UIImage(named: myKnowledgeStageOneBrain.getCurrentEntity().imageName)
        stageOneLabel.text      = myKnowledgeStageOneBrain.getCurrentEntity().question
        updateFirstStageButtons()
    }
    
    @IBAction func stageOneTrueButtonPressed(_ sender: UIButton) {
        let result = myKnowledgeStageOneBrain.checkAnswer(answer: true)
        sender.backgroundColor = result ? #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1) : #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        stageOneButtonsAction(answerResult: result)
    }
    
    @IBAction func stageOneFalseButtonPressed(_ sender: UIButton) {
        let result = myKnowledgeStageOneBrain.checkAnswer(answer: false)
        sender.backgroundColor = result ? #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1) : #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        stageOneButtonsAction(answerResult: result)
    }
    
    func stageOneButtonsAction(answerResult: Bool) -> Void {
        let systemSoundId = answerResult ? 1013 : 1006
        AudioServicesPlaySystemSound (SystemSoundID(systemSoundId))
        
        if myKnowledgeStageOneBrain.isLastEntity() {
            self.performSegue(withIdentifier: "myKnowledgeStageTwoSegue", sender: self)
        } else {
            myKnowledgeStageOneBrain.nextEntity()
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.updateView), userInfo: nil, repeats: false)
        }
    }
    
    func updateFirstStageButtons() -> Void {
        stageOneTrueButton.backgroundColor  = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageOneTrueButton.layer.cornerRadius = 0.5 * stageOneTrueButton.bounds.size.width
        stageOneTrueButton.clipsToBounds = true
        stageOneTrueButton.layer.borderWidth = 1.0
        stageOneTrueButton.layer.borderColor = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        
        stageOneFalseButton.backgroundColor = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageOneFalseButton.layer.cornerRadius = 0.5 * stageOneFalseButton.bounds.size.width
        stageOneFalseButton.clipsToBounds = true
        stageOneFalseButton.layer.borderWidth = 1.0
        stageOneFalseButton.layer.borderColor = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
    }
}
