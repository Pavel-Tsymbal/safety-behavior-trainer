//
//  MyKnowledgeStageFourEntity.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 15.05.21.
//

import Foundation

struct MyKnowledgeStageFourEntity {
    var title: String
    var images: [String]
    var imageTitles: [String]
    var answers: [Bool]
    
    init(title: String, images: [String], answers: [Bool], imageTitles: [String]) {
        self.title       = title
        self.images      = images
        self.answers     = answers
        self.imageTitles = imageTitles
    }
}
