//
//  ContentView.swift
//  MoveShakeScale
//
//  Created by Madalin Zaharia on 11.05.2023.
//

import SwiftUI
import SwiftCubicSpline

struct MoveShakeScale: GeometryEffect {
    private (set) var pct: CGFloat
    private let xPosition = UIScreen.main.bounds.width/4 + CGFloat.random(in: -20..<20)
    
    private let scaleSpline = CubicSpline(
        points: [
            Point(x: 0, y: 0.0),
            Point(x: 0.3, y: 3.5),
            Point(x: 0.4, y: 3.1),
            Point(x: 1.0, y: 2.1)
        ]
    )
    
    private let xSpline = CubicSpline(
        points: [
            Point(x: 0.0, y: 0.0),
            Point(x: 0.15, y: 20.0),
            Point(x: 0.3, y: 12),
            Point(x: 0.5, y: 0),
            Point(x: 1.0, y: 8)
        ]
    )
    
    var animatableData: CGFloat {
        get { pct }
        set { pct = newValue }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        let scale = scaleSpline[x: Double(pct)]
        let xOffset = xSpline[x: Double(pct)]
        let yOffset = UIScreen.main.bounds.height / 2 - pct * UIScreen.main.bounds.height/4*3
        
        let transTraf = CGAffineTransform(translationX: xPosition + CGFloat(xOffset), y: yOffset)
        let scaleTransf = CGAffineTransform(scaleX: CGFloat(scale), y: CGFloat(scale))
        return ProjectionTransform(scaleTransf.concatenating(transTraf))
    }
}
