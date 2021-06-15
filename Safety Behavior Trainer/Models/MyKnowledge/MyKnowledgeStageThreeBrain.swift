//
//  MyKnowledgeStageThreeBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 15.05.21.
//

import Foundation

class MyKnowledgeStageThreeBrain: BaseEntityBrain, EntityBrainProtocol {
    var correctAnswersCount: Int = 0
    
    func getCurrentEntity() -> MyKnowledgeStageThreeEntity {
        return entitiesArray[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == entitiesArray.count
    }
    
    override func nextEntity() {
        super.nextEntity()
        correctAnswersCount = 0
    }
    
    func increaseCorrectAnswersCount() {
        correctAnswersCount += 1
    }
    
    func isLastCorrectAnswer() -> Bool {
        getCurrentEntity().answers.filter{$0}.count == correctAnswersCount
    }
    
    func checkAnswer(answerIndex: Int) -> Bool {
        return getCurrentEntity().answers[answerIndex]
    }
    
    var entitiesArray: [MyKnowledgeStageThreeEntity] = [
        MyKnowledgeStageThreeEntity(
            title: "КОМУ МОЖНО ОТКРЫВАТЬ ДВЕР, ЕСЛИ ТЫ ОДИН?",
            images: ["policeman", "mechanic", "postal-worker", "family"],
            answers: [false, false, false, true],
            labels: ["МИЛИЦИОНЕР", "РАБОЧИЙ", "ПОЧТАЛЬОН", "РОДИТЕЛИ"]
        ),
        MyKnowledgeStageThreeEntity(
            title: "ГЕРОИ КАКИХ ПРОИЗВЕДЕНИЙ НЕ ЗНАЛИ ПРАВИЛ ОБЩЕНИЯ С НЕЗНАКОМЦАМИ?",
            images: ["cat-leo", "circle-body", "red-heat", "prince"],
            answers: [false, true, true, false],
            labels: ["КОТ ЛЕОПОЛЬД", "КОЛОБОК", "КРАСНАЯ ШАПОЧКА", "ВОВКА"]
        ),
        MyKnowledgeStageThreeEntity(
            title: "К КОМУ МОЖНО ОБРАТИТЬСЯ ЕСЛИ ТЫ ПОТЕРЯЛСЯ?",
            images: ["policeman-2", "family", "criminal", "pregnant-girl"],
            answers: [true, true, false, false],
            labels: ["МИЛИЦИОНЕР", "СЕМЬЯ", "НЕЗНАКОМЕЦ", "НЕЗНАКОМКА"]
        ),
        MyKnowledgeStageThreeEntity(
            title: "ЧТО МОЖНО ПРИНИМАТЬ ОТ НЕЗНАКОМЫХ ЛЮДЕЙ?",
            images: ["gift-candy", "gift-toys", "gifts-2", "gift-nothing"],
            answers: [false, false, false, true],
            labels: ["СЛАДОСТИ", "ИГРУШКИ", "ПОДАРКИ", "НИЧЕГО"]
        ),
        MyKnowledgeStageThreeEntity(
            title: "ЧТО ДЕЛАТЬ, ЕСЛИ ТЕБЯ ПЫТАЮТСЯ УВЕСТИ СИЛОЙ?",
            images: ["action-cry", "action-scream", "action-silent", "action-fight"],
            answers: [false, true, false, false],
            labels: ["ПЛАКАТЬ", "КРИЧАТЬ", "МОЛЧАТЬ", "ДРАТЬСЯ"]
        ),
    ]
    
}
