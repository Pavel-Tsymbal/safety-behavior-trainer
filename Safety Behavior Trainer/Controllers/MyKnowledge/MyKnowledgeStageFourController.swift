//
//  MyKnowledgeStageFourViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 19.05.21.
//

import UIKit

class MyKnowledgeStageFourController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var textFieldThree: UITextField!
    @IBOutlet weak var textFieldFour: UITextField!
    @IBOutlet weak var textFieldFive: UITextField!
    @IBOutlet weak var textFieldSix: UITextField!
    @IBOutlet weak var textFieldSeven: UITextField!
    
    @IBOutlet weak var resultImageViewOne: UIImageView!
    @IBOutlet weak var resultImageViewTwo: UIImageView!
    @IBOutlet weak var resultImageViewThree: UIImageView!
    @IBOutlet weak var resultImageViewFour: UIImageView!
    @IBOutlet weak var resultImageViewFive: UIImageView!
    @IBOutlet weak var resultImageViewSix: UIImageView!
    @IBOutlet weak var resultImageViewSeven: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        textFieldOne.delegate   = self
        textFieldTwo.delegate   = self
        textFieldThree.delegate = self
        textFieldFour.delegate  = self
        textFieldFive.delegate  = self
        textFieldSix.delegate   = self
        textFieldSeven.delegate = self
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        
        updateResultImages()
    }
    
    func updateResultImages() -> Void {
        if checkValue(textField: textFieldOne) {
            resultImageViewOne.image     = UIImage(systemName: "checkmark.circle")
            resultImageViewOne.tintColor = #colorLiteral(red: 0.4509803922, green: 0.9803921569, blue: 0.4745098039, alpha: 1)
        } else {
            resultImageViewOne.image     = UIImage(systemName: "xmark.circle")
            resultImageViewOne.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if checkValue(textField: textFieldTwo) {
            resultImageViewTwo.image     = UIImage(systemName: "checkmark.circle")
            resultImageViewTwo.tintColor = #colorLiteral(red: 0.4509803922, green: 0.9803921569, blue: 0.4745098039, alpha: 1)
        } else {
            resultImageViewTwo.image     = UIImage(systemName: "xmark.circle")
            resultImageViewTwo.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if checkValue(textField: textFieldThree) {
            resultImageViewThree.image     = UIImage(systemName: "checkmark.circle")
            resultImageViewThree.tintColor = #colorLiteral(red: 0.4509803922, green: 0.9803921569, blue: 0.4745098039, alpha: 1)
        } else {
            resultImageViewThree.image     = UIImage(systemName: "xmark.circle")
            resultImageViewThree.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if checkValue(textField: textFieldFour) {
            resultImageViewFour.image     = UIImage(systemName: "checkmark.circle")
            resultImageViewFour.tintColor = #colorLiteral(red: 0.4509803922, green: 0.9803921569, blue: 0.4745098039, alpha: 1)
        } else {
            resultImageViewFour.image     = UIImage(systemName: "xmark.circle")
            resultImageViewFour.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if checkValue(textField: textFieldFive) {
            resultImageViewFive.image     = UIImage(systemName: "checkmark.circle")
            resultImageViewFive.tintColor = #colorLiteral(red: 0.4509803922, green: 0.9803921569, blue: 0.4745098039, alpha: 1)
        } else {
            resultImageViewFive.image     = UIImage(systemName: "xmark.circle")
            resultImageViewFive.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if checkValue(textField: textFieldSix) {
            resultImageViewSix.image     = UIImage(systemName: "checkmark.circle")
            resultImageViewSix.tintColor = #colorLiteral(red: 0.4509803922, green: 0.9803921569, blue: 0.4745098039, alpha: 1)
        } else {
            resultImageViewSix.image     = UIImage(systemName: "xmark.circle")
            resultImageViewSix.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if checkValue(textField: textFieldSeven) {
            resultImageViewSeven.image     = UIImage(systemName: "checkmark.circle")
            resultImageViewSeven.tintColor = #colorLiteral(red: 0.4509803922, green: 0.9803921569, blue: 0.4745098039, alpha: 1)
        } else {
            resultImageViewSeven.image     = UIImage(systemName: "xmark.circle")
            resultImageViewSeven.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
    }

    func validateNumber(fieldName: String, answer: String) -> Bool {
        switch true {
        case fieldName == "пожарная" && answer == "101":
            return true;
        case fieldName == "милиция" && answer == "102":
            return true;
        case fieldName == "газовая" && answer == "104":
            return true;
        case fieldName == "скорая" && answer == "103":
            return true;
        case fieldName == "служба спасения" && answer == "112":
            return true;
        case fieldName == "мама":
            return true;
        case fieldName == "папа":
            return true;
        default:
            return false;
        }
    }
    
    func checkValue(textField: UITextField) -> Bool {
        if textField.text != "" {
            return validateNumber(fieldName: textField.placeholder!, answer: textField.text!)
        }
        
        return false
    }
    
    @IBAction func stageFourCancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
