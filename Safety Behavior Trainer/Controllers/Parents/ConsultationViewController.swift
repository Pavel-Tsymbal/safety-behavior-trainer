//
//  ConsultationViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import UIKit
import QuickLook

class ConsultationViewController: UIViewController, QLPreviewControllerDataSource {

    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true)
    
//        updateView()
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(true)
//
//        let previewController = QLPreviewController()
//        previewController.dataSource = self
//        present(previewController, animated: true)
//    }
    
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        guard let url = Bundle.main.url(forResource: "consult-1", withExtension: "docx") else {
                fatalError("Could not load \(index).pdf")
            }

            return url as QLPreviewItem
    }
    
    func updateView() -> Void {
//        do {
//            let contentsOfFile = try String(contentsOfFile:
//                                                Bundle.main.path(forResource: "consult-1", ofType: "docx")!, encoding: .ascii)
//
//            print(contentsOfFile)
//        } catch {
//            print(error)
//        }
        
        
        
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }
    
}
