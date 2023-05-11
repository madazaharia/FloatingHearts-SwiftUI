//
//  ContentView.swift
//  HeartView
//
//  Created by Madalin Zaharia on 11.05.2023.
//

import Foundation
import SwiftUI

struct HeartView: View, Identifiable {
    
    // MARK: Properties
    var id = UUID()
    @State private var opacity = 1.0
    @State private var scale: CGFloat = 1.0
    @State private var toAnimate: Bool = false
    
    // MARK: - Body
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.random())
            .opacity(opacity)
            .modifier(MoveShakeScale(pct: toAnimate ? 1 : 0))
            .animation(.easeIn(duration: 5.0), value: toAnimate)
            .task {
                toAnimate.toggle()
                withAnimation(.easeIn(duration: 5)) {
                    opacity = 0
                }
            }
    }
}

extension HeartView: Equatable {
    static func == (lhs: HeartView, rhs: HeartView) -> Bool {
        lhs.id == rhs.id
    }
}
