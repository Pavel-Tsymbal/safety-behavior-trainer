//
//  MyKnowledgeStageThreeController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 19.05.21.
//

import UIKit

class MyKnowledgeStageThreeController: UIViewController {

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
    
    var myKnowledgeStageThreeBrain = MyKnowledgeStageThreeBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    @IBAction func stageThreeCancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func updateView() -> Void {
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
    
    func stageThreeButtonAction(buttonNumber: Int, imageView: UIImageView) -> Void {
        let result = myKnowledgeStageThreeBrain.checkAnswer(answerIndex: buttonNumber)
        
        if result {
            myKnowledgeStageThreeBrain.increaseCorrectAnswersCount()
            imageView.image = UIImage(systemName: "checkmark.circle")
        } else {
            imageView.image = UIImage(systemName: "xmark.circle")
        }
        
        if myKnowledgeStageThreeBrain.isLastCorrectAnswer() && !myKnowledgeStageThreeBrain.isLastEntity() {
            Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: {_ in
                self.myKnowledgeStageThreeBrain.nextEntity()
                self.stageThreeClearResultImages()
                self.updateView()
            })
        }
        
        if myKnowledgeStageThreeBrain.isLastEntity() {
            self.performSegue(withIdentifier: "myKnowledgeStageFourSegue", sender: self)
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
}
