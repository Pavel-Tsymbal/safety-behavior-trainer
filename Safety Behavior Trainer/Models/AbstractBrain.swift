//
//  AbstractBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.05.21.
//

import Foundation

class AbstractBrain {
    var entitiesArray: [EntityProtocol]?
    var currentEntityNumber = 0
    
    func getCurrentStory() -> EntityProtocol? {
        return entitiesArray?[currentEntityNumber] ?? nil
    }
    
    func nextStory() -> Void {
        if !isLastStory() {
            currentEntityNumber += 1
        }
    }
    
    func previousStory() -> Void {
        if currentEntityNumber > 0 {
            currentEntityNumber -= 1
        }
    }
    
    func isLastStory() -> Bool {
        return currentEntityNumber + 1 == entitiesArray?.count
    }
    
    func isFirstStory() -> Bool {
        return currentEntityNumber == 0
    }
}
