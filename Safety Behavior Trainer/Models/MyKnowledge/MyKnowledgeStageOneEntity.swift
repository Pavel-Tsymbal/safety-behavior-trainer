//
//  myKnowledgeStageOne.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.05.21.
//

import Foundation

struct MyKnowledgeStageOneEntity {
    var imageName: String
    var question: String
    var answer: Bool
    
    init(imageName: String, question: String, answer: Bool) {
        self.imageName = imageName
        self.question  = question
        self.answer    = answer
    }
}
