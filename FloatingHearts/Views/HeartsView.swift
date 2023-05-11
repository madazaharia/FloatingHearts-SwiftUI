//
//  ContentView.swift
//  HeartsView
//
//  Created by Madalin Zaharia on 11.05.2023.
//

import SwiftUI

struct HeartsView: View {
    @ObservedObject var heartViewModel: HeartViewModel
    
    var body: some View {
        ForEach(heartViewModel.all) {
            $0
        }
    }
}
