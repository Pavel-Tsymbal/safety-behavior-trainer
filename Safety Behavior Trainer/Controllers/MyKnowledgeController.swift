//
//  MyKnowledgeController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 12.05.21.
//

import UIKit
import AVFoundation

class MyKnowledgeController: UIViewController {
    
    var stage: String = "one"

    @IBOutlet weak var stageOneImageView: UIImageView!
    @IBOutlet weak var stageOneLabel: UILabel!
    @IBOutlet weak var stageOneTrueButton: UIButton!
    @IBOutlet weak var stageOneFalseButton: UIButton!

    @IBOutlet weak var stageTwoLabel: UILabel!
    @IBOutlet weak var stageTwoTextButtonOne: UIButton!
    @IBOutlet weak var stageTwoTextButtonTwo: UIButton!
    @IBOutlet weak var stageTwoTextButtonThree: UIButton!
    @IBOutlet weak var stageTwoTextButtonFour: UIButton!
    
    @IBOutlet weak var stageThreeLabel: UILabel!
    @IBOutlet weak var stageThreeImageViewOne: UIImageView!
    @IBOutlet weak var stageThreeImageViewTwo: UIImageView!
    @IBOutlet weak var stageThreeImageViewThree: UIImageView!
    @IBOutlet weak var stageThreeImageViewFour: UIImageView!
    @IBOutlet weak var stageThreeImageLableOne: UILabel!
    @IBOutlet weak var stageThreeImageViewLableTwo: UILabel!
    @IBOutlet weak var stageThreeImageViewLabelThree: UILabel!
    @IBOutlet weak var stageThreeImageViewLabelFour: UILabel!
    @IBOutlet weak var stageThreeResultImageOne: UIImageView!
    @IBOutlet weak var stageThreeResultImageTwo: UIImageView!
    @IBOutlet weak var stageThreeResultImageThree: UIImageView!
    @IBOutlet weak var stageThreeResultImageFour: UIImageView!
    @IBOutlet weak var stageThreeLabelOne: UILabel!
    @IBOutlet weak var stageThreeLabelTwo: UILabel!
    @IBOutlet weak var stageThreeLabelThree: UILabel!
    @IBOutlet weak var stageThreeLabelFour: UILabel!
    
    var myKnowledgeStageOneBrain   = MyKnowledgeStageOneBrain()
    var myKnowledgeStageTwoBrain   = MyKnowledgeStageTwoBrain()
    var myKnowledgeStageThreeBrain = MyKnowledgeStageThreeBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    @IBAction func stageOneCancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func stageTwoCancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func stageThreeCancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
        self.performSegue(withIdentifier: "myKnowledgeStageThreeSegue", sender: self)
    }
    
    @objc func updateView() -> Void {
        if stage == "one" {
            stageOneUpdateView()
        } else if stage == "two" {
            stageTwoUpdateView()
        } else if stage == "three" {
            stageThreeUpdateView()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "myKnowledgeStageTwoSegue" {
            let destinationVC = segue.destination as! MyKnowledgeController
            
            destinationVC.stage = "two"
        } else if segue.identifier == "myKnowledgeStageThreeSegue" {
            let destinationVC = segue.destination as! MyKnowledgeController
            
            destinationVC.stage = "three"
        }
    }
    
    // stage one
    
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
            stage = "two"
            self.performSegue(withIdentifier: "myKnowledgeStageTwoSegue", sender: self)
        } else {
            myKnowledgeStageOneBrain.nextEntity()
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.updateView), userInfo: nil, repeats: false)
        }
    }
    
    func updateFirstStageButtons() -> Void {
        stageOneTrueButton.backgroundColor  = UIColor.clear
        stageOneTrueButton.layer.cornerRadius = 0.5 * stageOneTrueButton.bounds.size.width
        stageOneTrueButton.clipsToBounds = true
        stageOneTrueButton.layer.borderWidth = 1.0
        stageOneTrueButton.layer.borderColor = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        
        stageOneFalseButton.backgroundColor = UIColor.clear
        stageOneFalseButton.layer.cornerRadius = 0.5 * stageOneFalseButton.bounds.size.width
        stageOneFalseButton.clipsToBounds = true
        stageOneFalseButton.layer.borderWidth = 1.0
        stageOneFalseButton.layer.borderColor = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
    }
    
    func stageOneUpdateView() -> Void {
        stageOneImageView.image = UIImage(named: myKnowledgeStageOneBrain.getCurrentEntity().imageName)
        stageOneLabel.text      = myKnowledgeStageOneBrain.getCurrentEntity().question
        updateFirstStageButtons()
    }
    
    // ----------
    
    // stage two
    
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
            stage = "three"
            self.performSegue(withIdentifier: "myKnowledgeStageThreeSegue", sender: self)
        } else {
            myKnowledgeStageTwoBrain.nextEntity()
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateView), userInfo: nil, repeats: false)
        }
    }
    
    func stageTwoUpdateButtonColors() -> Void {
        stageTwoTextButtonOne.backgroundColor   = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageTwoTextButtonTwo.backgroundColor   = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageTwoTextButtonThree.backgroundColor = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
        stageTwoTextButtonFour.backgroundColor  = #colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)
    }
    
    func stageTwoUpdateView() -> Void {
        stageTwoLabel.text = myKnowledgeStageTwoBrain.getCurrentEntity().question
        
        stageTwoTextButtonOne.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[0], for: .normal)
        stageTwoTextButtonTwo.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[1], for: .normal)
        stageTwoTextButtonThree.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[2], for: .normal)
        stageTwoTextButtonFour.setTitle(myKnowledgeStageTwoBrain.getCurrentEntity().answers[3], for: .normal)
        stageTwoUpdateButtonColors()
    }
   
    // -----------
    
    // stage three
    
    func stageThreeButtonAction(buttonNumber: Int, imageView: UIImageView) -> Void {
        let result = myKnowledgeStageThreeBrain.checkAnswer(answerIndex: buttonNumber)
        
        if result {
            myKnowledgeStageThreeBrain.increaseCorrectAnswersCount()
            imageView.image = UIImage(systemName: "checkmark.circle")
        } else {
            imageView.image = UIImage(systemName: "xmark.circle")
        }
        
        if myKnowledgeStageThreeBrain.isLastCorrectAnswer() {
            Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: {_ in
                self.myKnowledgeStageThreeBrain.nextEntity()
                self.stageThreeClearResultImages()
                self.updateView()
            })
        }
    }
    
    func stageThreeClearResultImages() -> Void {
        stageThreeResultImageOne.image   = UIImage(systemName: "circle")
        stageThreeResultImageTwo.image   = UIImage(systemName: "circle")
        stageThreeResultImageThree.image = UIImage(systemName: "circle")
        stageThreeResultImageFour.image  = UIImage(systemName: "circle")
    }
    
    @objc func imageOneTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        stageThreeButtonAction(buttonNumber: 0, imageView: stageThreeResultImageOne)
    }
    
    @objc func imageTwoTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        stageThreeButtonAction(buttonNumber: 1, imageView: stageThreeResultImageTwo)
    }
    
    @objc func imageThreeTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        stageThreeButtonAction(buttonNumber: 2, imageView: stageThreeResultImageThree)
    }
    
    @objc func imageFourTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        stageThreeButtonAction(buttonNumber: 3, imageView: stageThreeResultImageFour)
    }
    
    func stageThreeUpdateView() -> Void {
        stageThreeLabel.text = myKnowledgeStageThreeBrain.getCurrentEntity().title
        stageThreeImageViewOne.image = UIImage(named: myKnowledgeStageThreeBrain.getCurrentEntity().images[0])
        stageThreeImageViewTwo.image = UIImage(named: myKnowledgeStageThreeBrain.getCurrentEntity().images[1])
        stageThreeImageViewThree.image = UIImage(named: myKnowledgeStageThreeBrain.getCurrentEntity().images[2])
        stageThreeImageViewFour.image = UIImage(named: myKnowledgeStageThreeBrain.getCurrentEntity().images[3])
        
        stageThreeLabelOne.text = myKnowledgeStageThreeBrain.getCurrentEntity().labels[0]
        stageThreeLabelTwo.text = myKnowledgeStageThreeBrain.getCurrentEntity().labels[1]
        stageThreeLabelThree.text = myKnowledgeStageThreeBrain.getCurrentEntity().labels[2]
        stageThreeLabelFour.text = myKnowledgeStageThreeBrain.getCurrentEntity().labels[3]
        
        let tapGestureRecognizerOne   = UITapGestureRecognizer(target: self, action: #selector(imageOneTapped(tapGestureRecognizer:)))
        let tapGestureRecognizerTwo   = UITapGestureRecognizer(target: self, action: #selector(imageTwoTapped(tapGestureRecognizer:)))
        let tapGestureRecognizerThree = UITapGestureRecognizer(target: self, action: #selector(imageThreeTapped(tapGestureRecognizer:)))
        let tapGestureRecognizerFour  = UITapGestureRecognizer(target: self, action: #selector(imageFourTapped(tapGestureRecognizer:)))
                                                              
        stageThreeImageViewOne.addGestureRecognizer(tapGestureRecognizerOne)
        stageThreeImageViewTwo.addGestureRecognizer(tapGestureRecognizerTwo)
        stageThreeImageViewThree.addGestureRecognizer(tapGestureRecognizerThree)
        stageThreeImageViewFour.addGestureRecognizer(tapGestureRecognizerFour)
    }
    
    // -------------
    
    // stage four
    
    
}
