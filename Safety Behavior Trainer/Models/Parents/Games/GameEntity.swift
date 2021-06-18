//
//  GameEntity.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 18.06.21.
//

import Foundation

struct GameEntity {
    let title: String
    let fileName: String
    
    init(title: String, fileName: String) {
        self.title    = title
        self.fileName = fileName
    }
}
