//
//  ContentViewViewModel.swift
//  SliderGame
//
//  Created by Анна Белова on 14.09.2024.
//

import Foundation
import Observation

@Observable
final class ContentViewViewModel: ObservableObject {
    var targetValue = Int.random(in: 0...100)
    var currentValue = Double.random(in: 0...100)
    
    func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
    
    func resetGame() {
        targetValue = Int.random(in: 0...100)
        currentValue = Double.random(in: 0...100)
    }
    
    func getAlpha() -> Double {
        let alpha = 1.0 - ((100 - Double(computeScore())) / 100.0)
        return max(0.0, min(1.0, alpha))
    }
}
