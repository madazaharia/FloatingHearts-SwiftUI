//
//  ContentView.swift
//  HeartViewModel
//
//  Created by Madalin Zaharia on 11.05.2023.
//

import Foundation
import SwiftUI

class HeartViewModel: ObservableObject {
    
    @Published private(set) var all: [HeartView] = []
    
    func createNewHeart() {
        let heart = HeartView()
        all.append(heart)
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0, execute: {
            self.all.remove(object: heart)
        })
    }
}
