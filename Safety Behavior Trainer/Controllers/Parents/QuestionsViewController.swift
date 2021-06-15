//
//  QuestionsViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 14.06.21.
//

import UIKit

class QuestionsViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        textView.text = ""
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
