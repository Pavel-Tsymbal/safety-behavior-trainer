//
//  CartoonsBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 12.06.21.
//

import Foundation

class CartoonsBrain: BaseEntityBrain {
    func getCurrentEntities() -> [CartoonEntity] {
        return entities[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == entities.count
    }
    
    let entities: [[CartoonEntity]] = [
        [
            CartoonEntity(image: "owl-lessons-cartoon", url: "https://youtu.be/SVCvqj-TVNw"),
            CartoonEntity(image: "lost-in-the-city-cartoon", url: "https://youtu.be/zcFs7cTTa_U"),
            CartoonEntity(image: "fixes-cartoon", url: "https://youtu.be/TUodzCtBSWU"),
            CartoonEntity(image: "arkady-steam-locomotives-cartoon", url: "https://youtu.be/R34x-71dhSM"),
        ],
        [
            CartoonEntity(image: "talk-with-unknown-cartoon", url: "https://youtu.be/NuHEHiI2po4"),
            CartoonEntity(image: "safety-lesson-cartoon", url: "https://youtu.be/LoTCIaZImIY"),
            CartoonEntity(image: "unknown-on-the-street-carton", url: "https://youtu.be/sleJr19pmsU"),
            CartoonEntity(image: "masha-and-the-bear-cartoon", url: "https://youtu.be/DYYBKkcJt7E"),
        ]
    ];
}
