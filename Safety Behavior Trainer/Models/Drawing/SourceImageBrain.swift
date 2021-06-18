//
//  SourceImageBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 15.06.21.
//

import Foundation

class SourceImageBrain: BaseEntityBrain, EntityBrainProtocol {
    
    func getCurrentEntity() -> SourceImageEntity {
        return images[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == images.count
    }
    
    let images = [
        SourceImageEntity(imageName: "Risunok1"),
        SourceImageEntity(imageName: "Risunok2"),
        SourceImageEntity(imageName: "Risunok3"),
        SourceImageEntity(imageName: "Risunok4"),
    ]
}
