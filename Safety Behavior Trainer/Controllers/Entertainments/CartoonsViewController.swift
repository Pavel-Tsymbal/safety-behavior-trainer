//
//  CartoonsViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 23.05.21.
//

import UIKit

class CartoonsViewController: UIViewController {
    
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var imageViewFour: UIImageView!
    
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var cartoonsBrain = CartoonsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateView() -> Void {
        let entities = cartoonsBrain.getCurrentEntities()
        
        imageViewOne.image   = UIImage(named: entities[0].image)
        imageViewTwo.image   = UIImage(named: entities[1].image)
        imageViewThree.image = UIImage(named: entities[2].image)
        imageViewFour.image  = UIImage(named: entities[3].image)
        
        let tapGestureRecognizerOne   = UITapGestureRecognizer(target: self, action: #selector(imageOneTapped(tapGestureRecognizer:)))
        let tapGestureRecognizerTwo   = UITapGestureRecognizer(target: self, action: #selector(imageTwoTapped(tapGestureRecognizer:)))
        let tapGestureRecognizerThree = UITapGestureRecognizer(target: self, action: #selector(imageThreeTapped(tapGestureRecognizer:)))
        let tapGestureRecognizerFour  = UITapGestureRecognizer(target: self, action: #selector(imageFourTapped(tapGestureRecognizer:)))
        
        imageViewOne.addGestureRecognizer(tapGestureRecognizerOne)
        imageViewTwo.addGestureRecognizer(tapGestureRecognizerTwo)
        imageViewThree.addGestureRecognizer(tapGestureRecognizerThree)
        imageViewFour.addGestureRecognizer(tapGestureRecognizerFour)
        
        nextButton.isHidden     = cartoonsBrain.isLastEntity()
        previousButton.isHidden = cartoonsBrain.isFirstEntity()
    }
    
    func bookImagePressed(buttonNumber: Int, imageView: UIImageView) -> Void {
        if let url = URL(string: cartoonsBrain.getCurrentEntities()[buttonNumber].url) {
            UIApplication.shared.open(url)
        }
    }
    
    @objc func imageOneTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        bookImagePressed(buttonNumber: 0, imageView: imageViewOne)
    }
    
    @objc func imageTwoTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        bookImagePressed(buttonNumber: 1, imageView: imageViewTwo)
    }
    
    @objc func imageThreeTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        bookImagePressed(buttonNumber: 2, imageView: imageViewThree)
    }
    
    @objc func imageFourTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        bookImagePressed(buttonNumber: 3, imageView: imageViewFour)
    }
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        cartoonsBrain.previousEntity()
        updateView()
    }
    
    @IBAction func nextButtonPrerssed(_ sender: UIButton) {
        cartoonsBrain.nextEntity()
        updateView()
    }
    
}
