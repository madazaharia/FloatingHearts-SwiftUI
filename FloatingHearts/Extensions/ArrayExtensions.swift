//
//  ContentView.swift
//  ArrayExtensions
//
//  Created by Madalin Zaharia on 11.05.2023.
//

import Foundation
import SwiftUI

extension Array where Element: Equatable {
    
    mutating func remove(object: Element) {
        guard let index = firstIndex(of: object) else {
            return
        }
        remove(at: index)
    }
}
