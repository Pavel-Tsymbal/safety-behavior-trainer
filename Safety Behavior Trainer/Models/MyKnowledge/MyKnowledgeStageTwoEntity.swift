//
//  MyKnowledgeStageTwoEntity.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 14.05.21.
//

import Foundation

struct MyKnowledgeStageTwoEntity {
    var question: String
    var answers: [String]
    var correctAnswer: String
    
    init(question: String, answers: [String], correctAnswer: String) {
        self.question      = question
        self.answers       = answers
        self.correctAnswer = correctAnswer
    }
}
