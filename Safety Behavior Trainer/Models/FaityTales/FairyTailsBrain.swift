//
//  FairyTailsBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 23.05.21.
//

import Foundation

class FairyTailsBrain: BaseEntityBrain {
    func getCurrentEntities() -> [FairyTailEntity] {
        return entities[currentEntityNumber]
    }
    
    func isLastEntity() -> Bool {
        return currentEntityNumber + 1 == entities.count
    }
    
    let entities: [[FairyTailEntity]] = [
        [
            FairyTailEntity(image: "сinderella-story", url: "https://nukadeti.ru/skazki/grimm-zolushka"),
            FairyTailEntity(image: "cat-cock-fox-story", url: "https://nukadeti.ru/skazki/kot_petukh_i_lisa"),
            FairyTailEntity(image: "circle-body-story", url: "https://nukadeti.ru/skazki/kolobok"),
            FairyTailEntity(image: "geese-swans-story", url: "https://nukadeti.ru/skazki/gusi_lebedi"),
        ],
        [
            FairyTailEntity(image: "red-heat-story", url: "https://nukadeti.ru/skazki/sharl-perro-krasnaya-shapochka"),
            FairyTailEntity(image: "scarlet-flower-story", url: "https://nukadeti.ru/skazki/aksakov_alenkij_cvetochek"),
            FairyTailEntity(image: "seven-heroes-story", url: "https://nukadeti.ru/skazki/pushkin_skazka_o_mjortvoj_carevne_i_o_semi_bogatyryakh"),
            FairyTailEntity(image: "wolf-and-seven-kids-story", url: "https://nukadeti.ru/skazki/bratya_grimm_volk_i_semero_kozlyat"),
        ]
    ];
}
