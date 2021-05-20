//
//  MyKnowledgeStageOneBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.05.21.
//

import Foundation

class MyKnowledgeStageOneBrain: BaseEntityBrain {
    
    func getCurrentEntity() -> MyKnowledgeStageOneEntity {
        return entitiesArray[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == entitiesArray.count
    }
    
    func checkAnswer(answer: Bool) -> Bool {
        return getCurrentEntity().answer == answer
    }
    
    var entitiesArray: [MyKnowledgeStageOneEntity] = [
        MyKnowledgeStageOneEntity(imageName: "gifts", question: "ОТКАЗАТЬСЯ ОТ УГОЩЕНИЯ", answer: true),
        MyKnowledgeStageOneEntity(imageName: "gifts", question: "КРИЧАТЬ «ПОМОГИТЕ!»", answer: true),
        MyKnowledgeStageOneEntity(imageName: "gifts", question: "РАЗГОВАРИВАТЬ С НЕЗНАКОМЦЕМ", answer: false),
        MyKnowledgeStageOneEntity(imageName: "gifts", question: "ВЫРЫВАТЬСЯ И БЕЖАТЬ", answer: true),
        MyKnowledgeStageOneEntity(imageName: "door-stranger", question: "ПОСМОТРЕТЬ В ГЛАЗОК", answer: true),
        MyKnowledgeStageOneEntity(imageName: "door-stranger", question: "ОТКРЫТЬ ДВЕРЬ", answer: false),
        MyKnowledgeStageOneEntity(imageName: "door-stranger", question: "СПРОСИТЬ «КТО ТАМ?»", answer: true),
        MyKnowledgeStageOneEntity(imageName: "door-stranger", question: "ОТОЙТИ ОТ ДВЕРИ И ПОЗВОНИТЬ РОДИТЕЛЯМ", answer: true),
        MyKnowledgeStageOneEntity(imageName: "door-stranger", question: "СКАЗАТЬ, ЧТО РОДИТЕЛЕЙ НЕ БУДЕТ ДОЛГО ДОМА", answer: false)
    ]
}
