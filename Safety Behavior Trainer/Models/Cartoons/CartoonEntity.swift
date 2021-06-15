//
//  CartoonsEntity.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 12.06.21.
//

import Foundation

struct CartoonEntity {
    var image: String
    var url: String
    
    init(image: String, url: String) {
        self.image = image
        self.url   = url
    }
}
