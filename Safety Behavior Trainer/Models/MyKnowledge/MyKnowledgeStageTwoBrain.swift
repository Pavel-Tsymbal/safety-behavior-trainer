//
//  MyKnowledgeStageTwoBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 14.05.21.
//

import Foundation

class MyKnowledgeStageTwoBrain: BaseEntityBrain {
    
    func getCurrentEntity() -> MyKnowledgeStageTwoEntity {
        return entitiesArray[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == entitiesArray.count
    }
    
    func checkAnswer(answer: String) -> Bool {
        return getCurrentEntity().correctAnswer == answer
    }
    
    var entitiesArray: [MyKnowledgeStageTwoEntity] = [
        MyKnowledgeStageTwoEntity(
            question: "В КАКОМ СЛУЧАЕ МОЖНО ПОЙТИ С НЕЗНАКОМЦЕМ?",
            answers: [
                "ЕСЛИ ОН ПРОСИТ ПОКАЗАТЬ ДОРОГУ",
                "ЕСЛИ ОН ПРИШЕЛ ПО ПОРУЧЕНИЮ МАМЫ",
                "ЕСЛИ ОН ЗОВЕТ ПОКАТАТЬСЯ НА СВОЕЙ МАШИНЕ",
                "НИ В КОЕМ СЛУЧАЕ"
            ],
            correctAnswer: "НИ В КОЕМ СЛУЧАЕ"
        ),
        MyKnowledgeStageTwoEntity(
            question: "ЧТО НУЖНО СКАЗАТЬ НЕЗНАКОМЦУ ПО ТЕЛЕФОНУ, ЕСЛИ ОН СПРАШИВАЕТ, ДОМА ЛИ РОДИТЕЛИ?",
            answers: [
                "РОДИТЕЛЕЙ НЕТ ДОМА",
                "РОДИТЕЛИ ДОМА, НО ЗАНЯТЫ",
                "МАМА ПРИДЕТ ПОЗДНО",
                "ПАПА УШЕЛ В МАГАЗИН"
            ],
            correctAnswer: "РОДИТЕЛИ ДОМА, НО ЗАНЯТЫ"
        ),
        MyKnowledgeStageTwoEntity(
            question: "ЧТО ДЕЛАТЬ, ЕСЛИ НЕЗНАКОМЕЦ ПЫТАЕТСЯ ОТКРЫВАТЬ ДВЕРЬ?",
            answers: [
                "ОТКРЫТЬ САМОМУ",
                "ПОСТАВИТЬ У ДВЕРИ ЧТО-ТО ТЯЖЕЛОЕ",
                "НАБРАТЬ 102, ГРОМКО ЗВАТЬ НА ПОМОЩЬ",
                "УГОВОРИТЬ НЕ ОТКРЫВАТЬ ДВЕРЬ"
            ],
            correctAnswer: "НАБРАТЬ 102, ГРОМКО ЗВАТЬ НА ПОМОЩЬ"
        ),
    ]
}
