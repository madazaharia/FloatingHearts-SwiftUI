//
//  ContentView.swift
//  ContentView
//
//  Created by Madalin Zaharia on 11.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    var heartViewModel = HeartViewModel()
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                heartButton
                Spacer()
            }
            .padding(.horizontal,30)
        }
        .overlay(HeartsView(heartViewModel: heartViewModel))
    }
    
    private var heartButton: some View {
        Button {
            heartViewModel.createNewHeart()
        } label: {
            Image(systemName: "heart")
                .font(.title)
                .frame(width: 80,height: 80)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Circle())
                .shadow(radius: 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
