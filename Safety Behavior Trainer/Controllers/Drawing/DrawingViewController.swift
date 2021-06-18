//
//  DrawingViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 15.06.21.
//

import UIKit

class DrawingViewController: UIViewController {
    
    var selectedImage: SourceImageEntity?
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var tempImageView: UIImageView!
    
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 5.0
    var opacity: CGFloat = 1.0
    var swiped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainImageView.image = selectedImage != nil ? UIImage(named: selectedImage!.imageName) : nil
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      guard let navController = segue.destination as? UINavigationController,
        let settingsController = navController.topViewController as? SettingsViewController else {
          return
      }
      settingsController.delegate = self
      settingsController.brush = brushWidth
      settingsController.opacity = opacity
      
      var red: CGFloat = 0
      var green: CGFloat = 0
      var blue: CGFloat = 0
      color.getRed(&red, green: &green, blue: &blue, alpha: nil)
      settingsController.red = red
      settingsController.green = green
      settingsController.blue = blue
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        tempImageView.image = nil
    }
    
    @IBAction func pencilPressed(_ sender: UIButton) {
      guard let pencil = Pencil(tag: sender.tag) else {
        return
      }
      color = pencil.color
      if pencil == .eraser {
        opacity = 1.0
      }
    }
    
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
      UIGraphicsBeginImageContext(view.frame.size)
      guard let context = UIGraphicsGetCurrentContext() else {
        return
      }
      tempImageView.image?.draw(in: view.bounds)
      
      context.move(to: fromPoint)
      context.addLine(to: toPoint)
      
      context.setLineCap(.round)
      context.setBlendMode(.normal)
      context.setLineWidth(brushWidth)
      context.setStrokeColor(color.cgColor)
      
      context.strokePath()
      
      tempImageView.image = UIGraphicsGetImageFromCurrentImageContext()
      tempImageView.alpha = opacity
      
      UIGraphicsEndImageContext()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let touch = touches.first else {
        return
      }
      swiped = false
      lastPoint = touch.location(in: view)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let touch = touches.first else {
        return
      }
      swiped = true
      let currentPoint = touch.location(in: view)
      drawLine(from: lastPoint, to: currentPoint)
      
      lastPoint = currentPoint
    }
}

// MARK: - SettingsViewControllerDelegate

extension DrawingViewController: SettingsViewControllerDelegate {
  func settingsViewControllerFinished(_ settingsViewController: SettingsViewController) {
    brushWidth = settingsViewController.brush
    opacity = settingsViewController.opacity
    color = UIColor(red: settingsViewController.red,
                    green: settingsViewController.green,
                    blue: settingsViewController.blue,
                    alpha: opacity)
    dismiss(animated: true)
  }
}
