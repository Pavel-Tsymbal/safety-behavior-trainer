//
//  MyKnowledgeStageThreeEntity.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 15.05.21.
//

import Foundation

struct MyKnowledgeStageThreeEntity {
    var title: String
    var images: [String]
    var answers: [Bool]
    var labels: [String]
    
    init(title: String, images: [String], answers: [Bool], labels: [String]) {
        self.title   = title
        self.images  = images
        self.answers = answers
        self.labels  = labels
    }
}
