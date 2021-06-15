//
//  Poem.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 12.06.21.
//

import Foundation

struct Poem {
    let title: String
    let text: String
    let imageName: String
    
    init(title: String, text: String, imageName: String) {
        self.title     = title
        self.text      = text
        self.imageName = imageName
    }
}
