//
//  ParentsViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 12.06.21.
//

import UIKit
import QuickLook

class ParentsViewController: UIViewController, QLPreviewControllerDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func forParentsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "additionalMaterialsSegue", sender: self)
    }
    
    @IBAction func memoButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "memoSegue", sender: self)
    }
    
    @IBAction func questionsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "questionsSegue", sender: self)
    }
    
    @IBAction func consultationsButtonPerssed(_ sender: UIButton) {
        preparePreviewController()
    }
    
    @IBAction func gamesButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "gamesSegue", sender: self)
    }
    
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 3
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        
        var fileName: String?
        
            switch index {
            case 0:
                fileName = "Консультация «Незнакомец за дверью»"
            case 1:
                fileName = "Консультация для родителей Охрана жизни и здоровья детей"
            default:
                fileName = "Личная безопасность"
            }
        
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "docx") else {
            fatalError("Could not load \(fileName!).docx")
        }
        
        return url as QLPreviewItem
    }
    
    func preparePreviewController() -> Void {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true)
    }
}
