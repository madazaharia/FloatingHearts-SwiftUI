//
//  ContentView.swift
//  ColorExtensions
//
//  Created by Madalin Zaharia on 11.05.2023.
//

import SwiftUI

extension Color {
    init(r: Double, g: Double, b: Double) {
        self.init(red: r / 255, green: g / 255, blue: b / 255)
    }
    
    static func random() -> Color {
        Color(r: .random(in: 100...144), g: .random(in: 10...200), b: .random(in: 200...244))
    }
}
