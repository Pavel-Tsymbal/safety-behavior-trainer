//
//  GamesListBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 18.06.21.
//

import Foundation

class GamesListBrain: BaseEntityBrain, EntityBrainProtocol {
    
    func getCurrentEntity() -> GameEntity {
        return items[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == items.count
    }
    
    let items: [GameEntity] = [
        GameEntity(title: "Методические рекомендации к ролевым играм по безопасности «Моя безопасность»", fileName: "Методические рекомендации"),
        GameEntity(title: "Игра «Незнакомец»", fileName: "Незнакомец"),
        GameEntity(title: "Игра «Один дома»", fileName: "Один дома"),
        GameEntity(title: "Игра «Телефонный звонок»", fileName: "Телефонный звонок"),
        GameEntity(title: "Игра «Подкуп»", fileName: "Подкуп"),
        GameEntity(title: "Игра «Машина»", fileName: "Машина"),
        GameEntity(title: "Игра «Если потерялся»", fileName: "Если потерялся"),
        GameEntity(title: "Игра «Защита»", fileName: "Защита"),
        GameEntity(title: "Игра «Дорога домой»", fileName: "Дорога домой"),
        GameEntity(title: "Игра «Вымогательство»", fileName: "Вымогательство"),
        GameEntity(title: "Игра «Опасность»", fileName: "Опасность"),
    ]
}
