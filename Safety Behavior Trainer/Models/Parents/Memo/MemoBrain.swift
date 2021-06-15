//
//  MemoBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import Foundation

class MemoBrain: BaseEntityBrain {
    func getCurrentEntity() -> String {
        return entities[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == entities.count
    }
    
    let entities: [String] = ["memo-1", "memo-2"];
}
