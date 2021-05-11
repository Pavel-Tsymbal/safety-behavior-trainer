//
//  StrangerStory.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 11.05.21.
//

import Foundation

struct StrangerStory {
    let title: String
    let text: String
    let imageName: String
    
    init(title: String, text: String, imageName: String) {
        self.title     = title
        self.text      = text
        self.imageName = imageName
    }
}
