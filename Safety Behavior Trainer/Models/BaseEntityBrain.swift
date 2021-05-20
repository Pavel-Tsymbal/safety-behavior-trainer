//
//  BaseEntity.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 14.05.21.
//

import Foundation

class BaseEntityBrain {
    var currentEntityNumber = 0
    
    func nextEntity() -> Void {
        currentEntityNumber += 1
    }
    
    func previousEntity() -> Void {
        if currentEntityNumber > 0 {
            currentEntityNumber -= 1
        }
    }
    
    func isFirstEntity() -> Bool {
        return currentEntityNumber == 0
    }
}
