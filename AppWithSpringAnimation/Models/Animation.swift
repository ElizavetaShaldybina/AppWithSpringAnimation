//
//  Animation.swift
//  AppWithSpringAnimation
//
//  Created by Елизавета Шалдыбина on 08.11.2023.
//

import Foundation

let dataStore = DataStore()

struct Animation {
    
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay = 1
    
    static func getAnimation() -> Animation {
            Animation(
                animation: dataStore.animation.randomElement() ?? "",
                curve: dataStore.curve.randomElement() ?? "",
                force: (Double.random(in: 1...2) * 100).rounded() / 100,
                duration: (Double.random(in: 1...2) * 100).rounded() / 100
            )
    }
}
