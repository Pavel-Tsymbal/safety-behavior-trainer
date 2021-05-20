//
//  MyKnowledgeStageTwoController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 19.05.21.
//

import UIKit

class MyKnowledgeStageTwoController: UIViewController {
    
    @IBOutlet weak var stageTwoLabel: UILabel!
    @IBOutlet weak var stageTwoTextButtonOne: UIButton!
    @IBOutlet weak var stageTwoTextButtonTwo: UIButton!
    @IBOutlet weak var stageTwoTextButtonThree: UIButton!
    @IBOutlet weak var stageTwoTextButtonFour: UIButton!
    
    var myKnowledgeStageTwoBrain = MyKnowledgeStageTwoBrain()

    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    @IBAction func stageTwoCancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc func updateView() -> Void {
        stageTwoLabel.text = myKnowledgeStageTwoBrain.getCurrentEntity().question
        
        stageTwoTextButtonOne.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[0], for: .normal)
        stageTwoTextButtonTwo.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[1], for: .normal)
        stageTwoTextButtonThree.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[2], for: .normal)
        stageTwoTextButtonFour.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[3], for: .normal)
        stageTwoUpdateButtonColors()
    }
    
    func stageTwoUpdateButtonColors() -> Void {
        stageTwoTextButtonOne.backgroundColor   = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageTwoTextButtonTwo.backgroundColor   = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageTwoTextButtonThree.backgroundColor = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageTwoTextButtonFour.backgroundColor  = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
    }
    
    @IBAction func stageTwoButtonPressed(_ sender: UIButton) {
        if sender.currentTitle != nil {
            let result = myKnowledgeStageTwoBrain.checkAnswer(answer: sender.currentTitle!)
            
            if result {
                sender.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            } else {
                sender.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
                
                switch myKnowledgeStageTwoBrain.getCurrentEntity().correctAnswer {
                case stageTwoTextButtonOne.currentTitle:
                    stageTwoTextButtonOne.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
                case stageTwoTextButtonTwo.currentTitle:
                    stageTwoTextButtonTwo.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
                case stageTwoTextButtonThree.currentTitle:
                    stageTwoTextButtonThree.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
                default:
                    stageTwoTextButtonFour.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
                }
            }
        }
        
        if myKnowledgeStageTwoBrain.isLastEntity() {
            self.performSegue(withIdentifier: "myKnowledgeStageThreeSegue", sender: self)
        } else {
            myKnowledgeStageTwoBrain.nextEntity()
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateView), userInfo: nil, repeats: false)
        }
    }
}
