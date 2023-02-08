//
//  LinearInterpolation.swift
//  DynamicTabIndicators
//
//  Created by Balsa Komnenovic on 8.2.23..
//

import SwiftUI

/// A simple class that will be useful to do linear interpolation calculations for dynamic tab animation
class LinearInterpolation {
    private var length: Int
    private var inputRange: [CGFloat]
    private var outputRange: [CGFloat]
    
    init(inputRange: [CGFloat], outputRange: [CGFloat]) {
        /// Safe check
        assert(inputRange.count == outputRange.count)
        self.length = inputRange.count - 1
        self.inputRange = inputRange
        self.outputRange = outputRange
    }
    
    func calculate(for x: CGFloat) -> CGFloat {
        /// If value is less than it's initial input range
        if x <= inputRange[0] { return outputRange[0] }
        for index in 1...length {
            let x1 = inputRange[index - 1]
            let x2 = inputRange[index]
            
            let y1 = outputRange[index - 1]
            let y2 = outputRange[index]
            
            /// Formula: y1 + ((y2 - y1) / (x2 - x1)) * (x - x1)
            if x <= inputRange[index] {
                let y = y1 + ((y2 - y1) / (x2 - x1)) * (x - x1)
                return y
            }
        }
        
        /// If value exceeds it's maximum input range
        return outputRange[length]
    }
}
