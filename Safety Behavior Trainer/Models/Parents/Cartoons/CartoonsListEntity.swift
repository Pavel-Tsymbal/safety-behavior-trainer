//
//  CarrtoonsListEntity.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import Foundation

struct CartoonsListEntity {
    let title: String
    let items: [String]
    
    init(title: String, items: [String]) {
        self.title = title
        self.items = items
    }
}
