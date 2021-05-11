//
//  DangerousStrangersBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 11.05.21.
//

import Foundation

struct DangerousStraingersBrain {
    var currentStoryNumber = 0
    
    func getCurrentStory() -> StrangerStory {
        return stories[currentStoryNumber]
    }
    
    mutating func nextStory() -> Void {
        if !isLastStory() {
            currentStoryNumber += 1
        }
    }
    
    mutating func previousStory() -> Void {
        if currentStoryNumber > 0 {
            currentStoryNumber -= 1
        }
        
    }
    
    func isLastStory() -> Bool {
        return currentStoryNumber + 1 == stories.count
    }
    
    func isFirstStory() -> Bool {
        return currentStoryNumber == 0
    }
    
    let stories = [
        StrangerStory(title: "ЗВОНОК В ДВЕРЬ", text: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", imageName: "ring"),
        StrangerStory(title: "Тест 1", text: "Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст Тест 1 текст", imageName: "main-view-picture"),
        StrangerStory(title: "Тест 2", text: "Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст Тест 2 текст", imageName: "Launch"),
        StrangerStory(title: "Тест 3", text: "Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст Тест 3 текст", imageName: "Background"),
    ]
}
