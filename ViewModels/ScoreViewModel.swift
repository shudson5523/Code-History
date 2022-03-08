//
//  ScoreViewModel.swift
//  Code History (iOS)
//
//  Created by Scott Hudson on 3/8/22.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
